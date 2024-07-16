-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2024 at 05:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zilodev_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` int NOT NULL DEFAULT '0',
  `revenues` int NOT NULL DEFAULT '0',
  `awards` int NOT NULL DEFAULT '0',
  `delivery` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `image`, `projects`, `revenues`, `awards`, `delivery`, `payment`, `support`, `created_at`, `updated_at`) VALUES
(1, 'OUR STORY', '<p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Lorem Ipsum is simply dummy text of the printing and typesetting indust orem Ipsum has been the industry\'s standard dummy texever since the when anunknown printer took a galley of type and scrambled it to make a type specimen book.</p><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Dorem Ipsum is simply dummy consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', 'image-1705412658.jpg', 324, 3, 379, '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Lorem Ipsum simply dumm the printing and typesetting indust orem Ipsum has been the industry standard dummy men book.</p><div class=\"features-item-list\" style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; margin-bottom: 7px;\">Smart UHD TV</li><li style=\"list-style: none; display: block; margin-bottom: 0px;\">Snow Frost in Freezer</li></ul></div>', '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Lorem Ipsum simply dumm the printing and typesetting indust orem Ipsum has been the industry standard dummy men book.</p><div class=\"features-item-list\" style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; margin-bottom: 7px;\">24/7 Support</li><li style=\"list-style: none; display: block; margin-bottom: 0px;\">Money back in 15 days</li></ul></div>', '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Lorem Ipsum simply dumm the printing and typesetting indust orem Ipsum has been the industry standard dummy men book.</p><div class=\"features-item-list\" style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; margin-bottom: 7px;\">Smart UHD TV</li><li style=\"list-style: none; display: block; margin-bottom: 0px;\">Snow Frost in Freezer</li></ul></div>', NULL, '2024-01-16 13:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `address_books`
--

CREATE TABLE `address_books` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `billing_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_id` int NOT NULL,
  `billing_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_id` int NOT NULL,
  `shipping_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_books`
--

INSERT INTO `address_books` (`id`, `user_id`, `billing_first_name`, `billing_last_name`, `billing_company_name`, `billing_country_id`, `billing_street_address`, `billing_city`, `billing_state`, `billing_zip_code`, `billing_phone`, `billing_email`, `shipping_first_name`, `shipping_last_name`, `shipping_company_name`, `shipping_country_id`, `shipping_street_address`, `shipping_city`, `shipping_state`, `shipping_zip_code`, `shipping_phone`, `shipping_email`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', NULL, '2024-01-02 09:47:53', '2024-01-15 06:46:19'),
(3, 3, 'Nowab', 'Shorif', 'ns', 18, 'Companygonj, Noakhali.', 'Dhaka', 'sdfsdf', '3280', '+8801839317038', 'nsanoman@gmail.com', 'Nowab', 'Shorif', 'ns', 18, 'Companygonj, Noakhali.', 'Dhaka', 'sdfsdf', '3280', '+8801839317038', 'nsanoman@gmail.com', 'ssdfsdfsdf', '2024-01-02 13:00:16', '2024-01-02 13:00:16'),
(4, 3, 'Nowab', 'Shorif', 'ns', 18, 'Companygonj, Noakhali.', 'Dhaka', 'sdfsdf', '3280', '+8801839317038', 'nsanoman@gmail.com', 'Nowab', 'Shorif', 'ns', 18, 'Companygonj, Noakhali.', 'Dhaka', 'sdfsdf', '3280', '+8801839317038', 'nsanoman@gmail.com', 'ssdfsdfsdf', '2024-01-02 13:01:19', '2024-01-02 13:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `mobile`, `email`, `password`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nowab Shorif', 'superadmin', '01839317038', 'admin@gmail.com', '$2y$10$1/ttMdrPz57cm4KUhK6Lh.3f.nDX3bIpGqTeXTx9ytmsh9WAPA17O', 'admin-1703581178.jpeg', 1, '2023-12-26 12:52:57', '2024-01-18 05:38:59'),
(5, 'Nowab Shorif', '2', '01839317938', 'nsanoman@gmail.com', '$2y$10$MrfCyuv1cxXjSvYyonkhIe1n7PTS6R24YKmpqj9OQcK5Jy5IciC4e', '', 1, '2024-01-31 08:22:06', '2024-01-31 09:00:11'),
(7, 'Malek Azad', '4', '01622985526', 'malekazad1980@gmail.com', '$2y$10$KUdqpi8zo/HxKxSe36OjueL8NFZZc8jf3zQ4m7y.GSoU7rlXFngaC', '', 1, '2024-01-31 09:01:19', '2024-01-31 09:01:19'),
(8, 'Manager', '5', '01739317038', 'manager@gmail.com', '$2y$10$S7spJEdBnHok4pv1XLSx2.Ok4MM6mlpvu.qBB7lhUWu28PhAoPFFa', '', 1, '2024-01-31 11:35:38', '2024-01-31 13:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `basic_infos`
--

CREATE TABLE `basic_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'footer-text',
  `phone1` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favIcon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptPaymentType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyRightName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyRightLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `mapLink` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `pinterest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `linkedIn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_infos`
--

INSERT INTO `basic_infos` (`id`, `title`, `moto`, `phone1`, `phone2`, `email`, `address`, `logo`, `favIcon`, `currency_code`, `currency_symbol`, `acceptPaymentType`, `copyRightName`, `copyRightLink`, `mapLink`, `facebook`, `instagram`, `twitter`, `pinterest`, `linkedIn`, `created_at`, `updated_at`) VALUES
(1, 'VENAM', 'Namkand sodales vel online best prices Amazon Check out ethnic wear, formal wear western wear Blood Pressure Rate Monito.', '458-965-3224', '458-965-3224', 'Support@info.Com', 'W898 RTower Stat, Suite 56 Brockland, CA 9622 United States.', 'logo-1702370986.png', 'favIcon-1702372155.png', 'INR', '₹', 'apt-1702371011.png', '<p>Copyright © 2024&nbsp;<font style=\"\" color=\"#ff0000\"><a href=\"http://youtube.com\" target=\"_blank\" style=\"\">VENAM</a></font><a href=\"http://youtube.com\" target=\"_blank\"> </a>All Rights Reserved.</p>', 'https://www.youtube.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.096340089998!2d90.41232931081352!3d23.74394367858587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b889a0e3b047%3A0x35d210fbb5e92f48!2z4Ka44Ka_4Ka4IOCmoeCnh-CmrSDgprLgpr_gpq7gpr_gpp_gp4fgpqE!5e0!3m2!1sen!2sbd!4v1702803916155!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.youtube.com/', '2023-12-12 09:09:15', '2024-02-01 07:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `basic_info_translations`
--

CREATE TABLE `basic_info_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `basic_info_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `moto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_info_translations`
--

INSERT INTO `basic_info_translations` (`id`, `basic_info_id`, `locale`, `title`, `moto`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'bn', 'ভেনাম', '\"আপনার গ্রাহকদের সম্মান (এবং শেষ পর্যন্ত ভালবাসা) অর্জন করতে, আপনাকে প্রথমে সেই গ্রাহকদের সম্মান করতে হবে। সেই কারণেই বেশিরভাগ বিজয়ী কোম্পানির দ্বারা গোল্ডেন রুল আচরণ গ্রহণ করা হয়।\" - কলিন ব্যারেট, সাউথওয়েস্ট এয়ারলাইন্সের প্রেসিডেন্ট এমেরিটা\"', 'W898 RTower Stat, Suite 56 Brockland, CA 9622 United States.\"\"', '2024-01-24 08:57:58', '2024-01-30 06:21:33'),
(2, 1, 'en', 'VENAM', '\"To earn the respect (and eventually love) of your customers, you first have to respect those customers. That is why Golden Rule behavior is embraced by most of the winning companies.\" – Colleen Barrett, Southwest Airlines President Emerita', 'W898 RTower Stat, Suite 56 Brockland, CA 9622 United States.\"', '2024-01-24 08:58:11', '2024-01-24 09:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `cat_id`, `title`, `short_desc`, `description`, `slug`, `image`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'NEW RECYCLING CONSORTIUM BEIGE AN OPEN CALL REASONS TO WAX INSTEAD OF SHAVING', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', 'new-recycling-consortium-beige-an-open-call-reasons-to-wax-instead-of-shaving', 'blog-1704977268.jpg', 1, 1, '2024-01-11 12:47:48', '2024-01-13 06:09:22'),
(3, 1, 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', 'new-recycling-consortium-beige-an-open-call', 'blog-1704977629.jpg', 1, 1, '2024-01-11 12:53:49', '2024-01-11 12:53:49'),
(4, 1, 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', 'new-recycling-consortium-beige-an-open-call', 'blog-1704977642.jpg', 1, 1, '2024-01-11 12:54:02', '2024-01-11 12:55:32'),
(5, 5, 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', 'new-recycling-consortium-beige-an-open-call', 'blog-1704977682.jpg', 1, 1, '2024-01-11 12:54:42', '2024-01-11 12:54:42'),
(6, 1, 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', 'new-recycling-consortium-beige-an-open-call', 'blog-1704977708.jpg', 1, 1, '2024-01-11 12:55:08', '2024-01-11 12:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `cat_name`, `cat_url`, `cat_description`, `cat_status`, `created_at`, `updated_at`) VALUES
(1, 'Beauty', 'beauty', 'Desc', 1, '2024-01-11 10:40:35', '2024-01-11 12:56:25'),
(2, 'Mens', 'mens', 'Desc', 1, '2024-01-11 10:42:09', '2024-01-11 10:42:09'),
(5, 'Fashion', 'fashion', 'Fashion', 1, '2024-01-11 10:56:23', '2024-01-11 10:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category_translations`
--

INSERT INTO `blog_category_translations` (`id`, `blog_category_id`, `locale`, `cat_name`, `cat_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'bn', 'সৌন্দর্য', 'সৌন্দর্য', '2024-01-24 06:33:13', '2024-01-24 06:35:18'),
(2, 1, 'en', 'Beauty', 'Desc', '2024-01-24 06:33:36', '2024-01-24 06:33:36'),
(3, 2, 'en', 'Mens', 'Desc', '2024-01-24 06:33:41', '2024-01-24 06:33:41'),
(4, 5, 'en', 'Fashion', 'Fashion', '2024-01-24 06:33:47', '2024-01-24 06:33:47'),
(7, 2, 'bn', 'পুরুষদের', 'পুরুষদের', '2024-01-24 06:36:09', '2024-01-24 06:36:09'),
(8, 5, 'bn', 'ফ্যাশন', 'ফ্যাশন', '2024-01-24 06:36:29', '2024-01-24 06:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `locale`, `title`, `short_desc`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'en', 'NEW RECYCLING CONSORTIUM BEIGE AN OPEN CALL REASONS TO WAX INSTEAD OF SHAVING', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', '2024-01-24 07:00:17', '2024-01-24 07:00:17'),
(2, 3, 'en', 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', '2024-01-24 07:00:23', '2024-01-24 07:00:23'),
(3, 6, 'en', 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', '2024-01-24 07:00:28', '2024-01-24 07:00:28'),
(4, 5, 'en', 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', '2024-01-24 07:00:34', '2024-01-24 07:00:34'),
(5, 4, 'en', 'New Recycling Consortium Beige An Open Call', 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesin.', '<h4 style=\"margin-bottom: 10px; font-weight: 700; font-size: 26px; font-family: &quot;Josefin Sans&quot;, sans-serif; color: rgb(37, 37, 37); text-transform: uppercase;\"><span style=\"color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px; font-weight: 400;\">Leopard Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typeseting the remaining Lorem Ipsum is simply dummy text of the printing and typesetting industrorem Ipsum has been the industry\'s standard dummys text ever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</span><br></h4><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Excepteur sint occaecat cupidatat non proident in culpaqui officia deserunt mollit anim idest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam</p><blockquote style=\"margin: 30px 0px; font-size: 15px; text-transform: uppercase; color: rgb(37, 37, 37); line-height: 1.9; display: flex; align-items: center; font-family: Rubik, sans-serif;\"><div class=\"quote-icon\" style=\"margin-right: 25px;\"><img src=\"https://themebeyond.com/html/venam/img/icon/quote.png\" alt=\"\"></div>WHETHER YOU ARE A BUSINESS OWNER, PROFESSIONAL OR FREELANCER, OFFERS YOU MULTIPLE WAYS TO GET PAID ONLINE BY INTERNATIONAL EXCELLENT ONLINE PAYMENT CLIENTS AND GLOBAL ...</blockquote><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Pythong Print Anorak Jacket In Beige but also the leap into electronic typeting the remaining Lorem Ipsum simply dummy text of the printing and typesetting industm Ipsum has been the industry\'s standard dummys textever occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam.</p><div class=\"details-img-wrap\" style=\"display: flex; align-items: center; margin: 30px 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"details-img-col\" style=\"margin-right: 30px;\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img01.jpg\" alt=\"\" style=\"width: 464.281px;\"></div><div class=\"details-img-col\"><img src=\"https://themebeyond.com/html/venam/img/blog/blog_details_img02.jpg\" alt=\"\" style=\"width: 295.719px;\"></div></div><p style=\"margin-bottom: 15px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); padding: 0px; font-family: Rubik, sans-serif;\">Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proidensunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis istnatus voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae cupidatnon proident in culpaqui officia deserunt mollit anidest laboum. Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>', '2024-01-24 07:00:40', '2024-01-24 07:00:40'),
(6, 2, 'bn', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ শেভ করার পরিবর্তে মোম করার জন্য একটি খোলা কল কারণ', 'ক্র্যামন্ড লেপার্ড এবং পাইথং প্রিন্ট আনোরাক জ্যাকেট বেইজে কিন্তু ইলেকট্রনিক টাইপসিনে লাফিয়ে।', '<p>ক্র্যামন্ড লেপার্ড এবং পাইথং প্রিন্ট আনোরাক জ্যাকেট বেইজে কিন্তু ইলেকট্রনিক টাইপসিনে লাফিয়ে।<br></p>', '2024-01-24 07:14:00', '2024-01-24 07:14:00'),
(7, 3, 'bn', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', '<p>নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল<br></p>', '2024-01-24 07:16:10', '2024-01-24 07:16:10'),
(8, 4, 'bn', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', '<p>নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল<br></p>', '2024-01-24 07:16:18', '2024-01-24 07:16:18'),
(9, 5, 'bn', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', '<p>নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল<br></p>', '2024-01-24 07:16:25', '2024-01-24 07:16:25'),
(10, 6, 'bn', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', 'নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল', '<p>নতুন রিসাইক্লিং কনসোর্টিয়াম বেইজ একটি খোলা কল<br></p>', '2024-01-24 07:16:32', '2024-01-24 07:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_seller` tinyint NOT NULL DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `admin_id`, `title`, `meta_title`, `meta_description`, `image`, `slug`, `best_seller`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'TV, Appliances', 'TV, Appliances', 'TV, Appliances', 'cat-1702467788.png', 'tv-appliances', 0, '1', '2023-12-13 11:08:11', '2024-01-23 07:31:58'),
(2, NULL, 'Baby Product', 'Baby Product', 'Baby Product', 'cat-1704893769.png', 'baby-product', 1, '1', '2023-12-13 11:08:18', '2024-01-10 13:36:09'),
(3, NULL, 'Western woman', 'Western woman', 'Western woman', 'cat-1702465726.png', 'western-woman', 0, '1', '2023-12-13 11:08:46', '2023-12-13 11:08:46'),
(4, NULL, 'Grocery Product', 'Grocery Product', 'Grocery Product', 'cat-1702467865.png', 'grocery-product', 0, '1', '2023-12-13 11:44:25', '2023-12-13 11:44:25'),
(6, NULL, 'Beauty, Health Product', 'Beauty, Health Product', 'Beauty, Health Product', 'cat-1702467988.png', 'beauty-health-product', 0, '1', '2023-12-13 11:46:28', '2024-01-10 13:15:33'),
(7, NULL, 'Others Sports', 'Others Sports', 'Others Sports', 'cat-1702468018.png', 'others-sports', 0, '1', '2023-12-13 11:46:58', '2024-01-10 13:15:52'),
(8, NULL, 'Health Product', 'Health Product', 'Health Product', 'cat-1704893202.png', 'health-product', 1, '1', '2023-12-13 11:47:25', '2024-01-10 13:26:42'),
(9, NULL, 'Club Sports', 'Club Sports', 'Club Sports', 'cat-1704893192.png', 'club-sports', 1, '1', '2023-12-13 12:27:27', '2024-01-10 13:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'bn', 'টিভি, যন্ত্রপাতি', 'টিভি, যন্ত্রপাতি', 'টিভি, যন্ত্রপাতি', NULL, '2024-01-23 07:21:51'),
(3, 9, 'bn', 'ক্লাব ক্রীড়া', 'ক্লাব ক্রীড়া', 'ক্লাব ক্রীড়া', '2024-01-23 07:12:02', '2024-01-23 07:17:39'),
(4, 3, 'bn', 'পশ্চিমা নারী', 'পশ্চিমা নারী', 'পশ্চিমা নারী', '2024-01-23 07:12:59', '2024-01-23 07:21:01'),
(5, 2, 'bn', 'শিশুর পণ্য', 'শিশুর পণ্য', 'শিশুর পণ্য', '2024-01-23 07:14:58', '2024-01-23 07:21:23'),
(7, 8, 'bn', 'স্বাস্থ্য পণ্য', 'স্বাস্থ্য পণ্য', 'স্বাস্থ্য পণ্য', '2024-01-23 07:18:06', '2024-01-23 07:18:06'),
(8, 7, 'bn', 'অন্যান্য খেলাধুলা', 'অন্যান্য খেলাধুলা', 'অন্যান্য খেলাধুলা', '2024-01-23 07:18:57', '2024-01-23 07:18:57'),
(10, 4, 'bn', 'মুদি পণ্য', 'মুদি পণ্য', 'মুদি পণ্য', '2024-01-23 07:20:37', '2024-01-23 07:20:37'),
(11, 1, 'en', 'TV, Appliances', 'TV, Appliances', 'TV, Appliances', '2024-01-23 07:31:04', '2024-01-23 07:31:04'),
(13, 7, 'en', 'Others Sports', 'Others Sports', 'Others Sports', '2024-01-23 07:45:00', '2024-01-23 07:45:00'),
(14, 2, 'en', 'Baby Product', 'Baby Product', 'Baby Product', '2024-01-23 07:45:53', '2024-01-23 07:45:53'),
(16, 9, 'en', 'Club Sports', 'Club Sports', 'Club Sports', '2024-01-23 07:49:21', '2024-01-23 07:49:21'),
(17, 8, 'en', 'Health Product', 'Health Product', 'Health Product', '2024-01-23 07:49:26', '2024-01-23 07:49:26'),
(18, 3, 'en', 'Western woman', 'Western woman', 'Western woman', '2024-01-23 07:49:31', '2024-01-23 07:49:31'),
(19, 6, 'en', 'Beauty, Health Product', 'Beauty, Health Product', 'Beauty, Health Product', '2024-01-23 07:49:37', '2024-01-23 07:49:37'),
(20, 4, 'en', 'Grocery Product', 'Grocery Product', 'Grocery Product', '2024-01-23 07:49:42', '2024-01-23 07:49:42'),
(22, 6, 'bn', 'টিভি, যন্ত্রপাতি', 'টিভি, যন্ত্রপাতি', 'টিভি, যন্ত্রপাতি', '2024-01-23 08:25:54', '2024-01-23 08:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#FF0000', 1, NULL, '2023-12-26 12:05:28'),
(2, 'Pink', '#FFC0CB', 1, '2023-12-26 11:55:11', '2023-12-26 12:06:01'),
(3, 'Yellow', '#FFFF00', 1, '2023-12-26 11:55:49', '2023-12-26 12:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'AL', 'Albania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZ', 'Algeria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AS', 'American Samoa', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'AD', 'Andorra', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AO', 'Angola', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AI', 'Anguilla', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AQ', 'Antarctica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AG', 'Antigua and Barbuda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'AR', 'Argentina', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'AM', 'Armenia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'AW', 'Aruba', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'AU', 'Australia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'AT', 'Austria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'AZ', 'Azerbaijan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BS', 'Bahamas', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BH', 'Bahrain', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BD', 'Bangladesh', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BB', 'Barbados', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BY', 'Belarus', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BE', 'Belgium', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BZ', 'Belize', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BJ', 'Benin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'BM', 'Bermuda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BT', 'Bhutan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BO', 'Bolivia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BA', 'Bosnia and Herzegovina', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'BW', 'Botswana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'BV', 'Bouvet Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'BR', 'Brazil', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'IO', 'British Indian Ocean Territory', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'BN', 'Brunei Darussalam', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'BG', 'Bulgaria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'BF', 'Burkina Faso', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'BI', 'Burundi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'KH', 'Cambodia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'CM', 'Cameroon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'CA', 'Canada', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CV', 'Cape Verde', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'KY', 'Cayman Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'CF', 'Central African Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'TD', 'Chad', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CL', 'Chile', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'CN', 'China', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'CX', 'Christmas Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'CC', 'Cocos (Keeling) Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'CO', 'Colombia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'KM', 'Comoros', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'CD', 'Democratic Republic of the Congo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'CG', 'Republic of Congo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'CK', 'Cook Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'CR', 'Costa Rica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'HR', 'Croatia (Hrvatska)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'CU', 'Cuba', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'CY', 'Cyprus', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'CZ', 'Czech Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DK', 'Denmark', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'DJ', 'Djibouti', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'DM', 'Dominica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'DO', 'Dominican Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'TL', 'East Timor', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'EC', 'Ecuador', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'EG', 'Egypt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'SV', 'El Salvador', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'GQ', 'Equatorial Guinea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'ER', 'Eritrea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'EE', 'Estonia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ET', 'Ethiopia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'FK', 'Falkland Islands (Malvinas)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'FO', 'Faroe Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'FJ', 'Fiji', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'FI', 'Finland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'FR', 'France', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'FX', 'France, Metropolitan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'GF', 'French Guiana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'PF', 'French Polynesia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'TF', 'French Southern Territories', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'GA', 'Gabon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'GM', 'Gambia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'GE', 'Georgia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'DE', 'Germany', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'GH', 'Ghana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'GI', 'Gibraltar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'GG', 'Guernsey', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'GR', 'Greece', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'GL', 'Greenland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'GD', 'Grenada', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'GP', 'Guadeloupe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'GU', 'Guam', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'GT', 'Guatemala', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'GN', 'Guinea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'GW', 'Guinea-Bissau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'GY', 'Guyana', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'HT', 'Haiti', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'HM', 'Heard and Mc Donald Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'HN', 'Honduras', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'HK', 'Hong Kong', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'HU', 'Hungary', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'IS', 'Iceland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'IN', 'India', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'IM', 'Isle of Man', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'ID', 'Indonesia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'IR', 'Iran (Islamic Republic of)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'IQ', 'Iraq', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'IE', 'Ireland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'IL', 'Israel', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'IT', 'Italy', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'CI', 'Ivory Coast', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'JE', 'Jersey', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'JM', 'Jamaica', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'JP', 'Japan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'JO', 'Jordan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'KZ', 'Kazakhstan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'KE', 'Kenya', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'KI', 'Kiribati', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'KR', 'Korea, Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'XK', 'Kosovo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'KW', 'Kuwait', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'KG', 'Kyrgyzstan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'LA', 'Lao People\'s Democratic Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'LV', 'Latvia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'LB', 'Lebanon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'LS', 'Lesotho', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'LR', 'Liberia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'LY', 'Libyan Arab Jamahiriya', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'LI', 'Liechtenstein', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'LT', 'Lithuania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'LU', 'Luxembourg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'MO', 'Macau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'MK', 'North Macedonia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'MG', 'Madagascar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'MW', 'Malawi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'MY', 'Malaysia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'MV', 'Maldives', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'ML', 'Mali', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'MT', 'Malta', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'MH', 'Marshall Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'MQ', 'Martinique', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'MR', 'Mauritania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'MU', 'Mauritius', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'YT', 'Mayotte', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'MX', 'Mexico', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'FM', 'Micronesia, Federated States of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'MD', 'Moldova, Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'MC', 'Monaco', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'MN', 'Mongolia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'ME', 'Montenegro', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'MS', 'Montserrat', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'MA', 'Morocco', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'MZ', 'Mozambique', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'MM', 'Myanmar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'NA', 'Namibia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'NR', 'Nauru', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'NP', 'Nepal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'NL', 'Netherlands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'AN', 'Netherlands Antilles', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'NC', 'New Caledonia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'NZ', 'New Zealand', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'NI', 'Nicaragua', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'NE', 'Niger', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'NG', 'Nigeria', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'NU', 'Niue', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'NF', 'Norfolk Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'MP', 'Northern Mariana Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'NO', 'Norway', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'OM', 'Oman', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'PK', 'Pakistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'PW', 'Palau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'PS', 'Palestine', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'PA', 'Panama', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'PG', 'Papua New Guinea', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'PY', 'Paraguay', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'PE', 'Peru', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'PH', 'Philippines', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'PN', 'Pitcairn', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'PL', 'Poland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'PT', 'Portugal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'PR', 'Puerto Rico', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'QA', 'Qatar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'RE', 'Reunion', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'RO', 'Romania', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'RU', 'Russian Federation', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'RW', 'Rwanda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'KN', 'Saint Kitts and Nevis', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'LC', 'Saint Lucia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'VC', 'Saint Vincent and the Grenadines', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'WS', 'Samoa', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'SM', 'San Marino', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'ST', 'Sao Tome and Principe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'SA', 'Saudi Arabia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'SN', 'Senegal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'RS', 'Serbia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'SC', 'Seychelles', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'SL', 'Sierra Leone', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'SG', 'Singapore', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'SK', 'Slovakia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'SI', 'Slovenia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'SB', 'Solomon Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'SO', 'Somalia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'ZA', 'South Africa', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'GS', 'South Georgia South Sandwich Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'SS', 'South Sudan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'ES', 'Spain', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'LK', 'Sri Lanka', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'SH', 'St. Helena', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'PM', 'St. Pierre and Miquelon', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'SD', 'Sudan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'SR', 'Suriname', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'SZ', 'Eswatini', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'SE', 'Sweden', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'CH', 'Switzerland', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'SY', 'Syrian Arab Republic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'TW', 'Taiwan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'TJ', 'Tajikistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'TZ', 'Tanzania, United Republic of', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'TH', 'Thailand', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'TG', 'Togo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'TK', 'Tokelau', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'TO', 'Tonga', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'TT', 'Trinidad and Tobago', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'TN', 'Tunisia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'TR', 'Turkey', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'TM', 'Turkmenistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'TC', 'Turks and Caicos Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'TV', 'Tuvalu', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'UG', 'Uganda', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'UA', 'Ukraine', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'AE', 'United Arab Emirates', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'GB', 'United Kingdom', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'US', 'United States', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'UM', 'United States minor outlying islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'UY', 'Uruguay', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'UZ', 'Uzbekistan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'VU', 'Vanuatu', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'VA', 'Vatican City State', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'VE', 'Venezuela', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'VN', 'Vietnam', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'VG', 'Virgin Islands (British)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'VI', 'Virgin Islands (U.S.)', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'WF', 'Wallis and Futuna Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'EH', 'Western Sahara', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'YE', 'Yemen', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'ZM', 'Zambia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'ZW', 'Zimbabwe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int NOT NULL,
  `coupon_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_perc` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_view` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_type`, `coupon_code`, `discount_perc`, `start_date`, `end_date`, `coupon_img`, `home_view`, `created_at`, `updated_at`) VALUES
(45, '4th of July Sale', 'july', 10, '2015-07-01', '2015-07-04', '', 0, NULL, NULL),
(47, 'Labor Day Sale', 'FWUSA', 15, '2015-09-03', '2015-09-07', '', 0, NULL, NULL),
(48, 'Columbus Day Sale', 'FWUSA', 15, '2015-10-09', '2015-10-12', '', 0, NULL, NULL),
(50, 'HALLOWEEN SALE', 'FWUSA', 10, '2015-10-23', '2015-10-25', '', 0, NULL, NULL),
(53, 'Thanks Giving Day', 'fwusa', 15, '2015-11-26', '2015-11-29', '', 0, NULL, NULL),
(54, 'Christmas Sale', 'fwusa', 15, '2015-12-19', '2015-12-24', '', 0, NULL, NULL),
(55, 'Winter Sale', 'fwusa', 15, '2016-01-18', '2016-01-20', '', 0, NULL, NULL),
(57, 'Valentine Day Sale', 'fwusa', 15, '2016-02-12', '2016-02-14', '', 0, NULL, NULL),
(64, 'COVID-19', 'COVID', 20, '2021-03-03', '2021-03-13', '', 1, NULL, NULL),
(70, 'SUMMER SALE', 'fwusa', 15, '2016-07-23', '2016-07-24', '', 0, NULL, NULL),
(73, 'Early Christmas Sale', 'CMD16', 20, '2016-12-22', '2016-12-23', '', 0, NULL, NULL),
(76, 'New Year Sale', 'fwusa', 20, '2017-01-01', '2017-01-03', '', 0, NULL, NULL),
(77, 'MARTIN LUTHER KING JR DAY', 'fwusa', 15, '2021-01-27', '2026-12-31', '', 1, NULL, '2024-01-01 13:40:02'),
(151, 'NSA Noman', 'ff', 20, '2024-01-02', '2024-01-26', '', 1, '2024-01-01 12:40:16', '2024-01-01 12:40:16'),
(152, 'NSA Noman', 'nnn', 25, '2024-01-01', '2024-01-10', 'cpn-1704114486.jpeg', 1, '2024-01-01 12:42:12', '2024-01-01 13:08:06'),
(153, 'NSA Noman', 'fw', 20, '2024-01-02', '2024-01-05', 'cpn-1704114378.jpeg', 1, '2024-01-01 12:44:53', '2024-01-01 13:06:34'),
(154, 'NSA Noman', 'nsa', 45, '2024-01-03', '2024-02-09', 'cpn-1704114504.jpeg', 1, '2024-01-01 13:08:24', '2024-02-01 08:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `currency_symbols`
--

CREATE TABLE `currency_symbols` (
  `id` int NOT NULL,
  `country` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_symbols`
--

INSERT INTO `currency_symbols` (`id`, `country`, `currency`, `code`, `symbol`) VALUES
(1, 'Afghanistan', 'Afghan afghani', 'AFN', '؋'),
(2, 'Akrotiri and Dhekelia (UK)', 'European euro', 'EUR', '€'),
(3, 'Aland Islands (Finland)', 'European euro', 'EUR', '€'),
(4, 'Albania', 'Albanian lek', 'ALL', 'Lek'),
(5, 'Algeria', 'Algerian dinar', 'DZD', 'DA'),
(6, 'American Samoa (USA)', 'United States dollar', 'USD', '$'),
(7, 'Andorra', 'European euro', 'EUR', '€'),
(8, 'Angola', 'Angolan kwanza', 'AOA', 'Kz'),
(9, 'Anguilla (UK)', 'East Caribbean dollar', 'XCD', '$'),
(10, 'Antigua and Barbuda', 'East Caribbean dollar', 'XCD', '$'),
(11, 'Argentina', 'Argentine peso', 'ARS', '$'),
(12, 'Armenia', 'Armenian dram', 'AMD', '֏'),
(13, 'Aruba (Netherlands)', 'Aruban florin', 'AWG', 'ƒ'),
(14, 'Ascension Island (UK)', 'Saint Helena pound', 'SHP', '£'),
(15, 'Australia', 'Australian dollar', 'USD', '$'),
(16, 'Austria', 'European euro', 'EUR', '€'),
(17, 'Azerbaijan', 'Azerbaijan manat', 'AZN', 'ман'),
(18, 'Bahamas', 'Bahamian dollar', 'BSD', '$'),
(19, 'Bahrain', 'Bahraini dinar', 'BHD', 'BD'),
(20, 'Bangladesh', 'Bangladeshi taka', 'BDT', '৳'),
(21, 'Barbados', 'Barbadian dollar', 'BBD', '$'),
(23, 'Belgium', 'European euro', 'EUR', '€'),
(24, 'Belize', 'Belize dollar', 'BZD', 'BZ$'),
(25, 'Benin', 'West African CFA franc', 'XOF', 'CFA'),
(26, 'Bermuda (UK)', 'Bermudian dollar', 'BMD', '$'),
(28, 'Bolivia', 'Bolivian boliviano', 'BOB', '$b'),
(29, 'Bonaire (Netherlands)', 'United States dollar', 'USD', '$'),
(30, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina convertible mark', 'BAM', 'KM'),
(31, 'Botswana', 'Botswana pula', 'BWP', 'P'),
(32, 'Brazil', 'Brazilian real', 'BRL', 'R$'),
(33, 'British Indian Ocean Territory (UK)', 'United States dollar', 'USD', '$'),
(34, 'British Virgin Islands (UK)', 'United States dollar', 'USD', '$'),
(35, 'Brunei', 'Brunei dollar', 'BND', '$'),
(36, 'Bulgaria', 'Bulgarian lev', 'BGN', 'лв'),
(37, 'Burkina Faso', 'West African CFA franc', 'XOF', 'CFA'),
(38, 'Burundi', 'Burundi franc', 'BIF', 'FBu'),
(39, 'Cabo Verde', 'Cape Verdean escudo', 'CVE', 'Esc'),
(40, 'Cambodia', 'Cambodian riel', 'KHR', '៛'),
(41, 'Cameroon', 'Central African CFA franc', 'XAF', 'FCFA'),
(42, 'Canada', 'Canadian dollar', 'CAD', '$'),
(43, 'Caribbean Netherlands (Netherlands)', 'United States dollar', 'USD', '$'),
(44, 'Cayman Islands (UK)', 'Cayman Islands dollar', 'KYD', '$'),
(45, 'Central African Republic', 'Central African CFA franc', 'XAF', 'FCFA'),
(46, 'Chad', 'Central African CFA franc', 'XAF', 'FCFA'),
(47, 'Chatham Islands (New Zealand)', 'New Zealand dollar', 'NZD', '$'),
(48, 'Chile', 'Chilean peso', 'CLP', '$'),
(49, 'China', 'Chinese Yuan Renminbi', 'CNY', '¥'),
(50, 'Christmas Island (Australia)', 'Australian dollar', 'USD', '$'),
(51, 'Cocos (Keeling) Islands (Australia)', 'Australian dollar', 'USD', '$'),
(52, 'Colombia', 'Colombian peso', 'COP', '$'),
(53, 'Comoros', 'Comorian franc', 'KMF', 'CF'),
(54, 'Congo, Democratic Republic of the', 'Congolese franc', 'CDF', 'CDF'),
(55, 'Congo, Republic of the', 'Central African CFA franc', 'XAF', 'FCFA'),
(57, 'Costa Rica', 'Costa Rican colon', 'CRC', '₡'),
(58, 'Cote d\'Ivoire', 'West African CFA franc', 'XOF', 'CFA'),
(59, 'Croatia', 'Croatian kuna', 'HRK', 'kn'),
(60, 'Cuba', 'Cuban peso', 'CUP', '₱'),
(61, 'Curacao (Netherlands)', 'Netherlands Antillean guilder', 'ANG', 'ƒ'),
(62, 'Cyprus', 'European euro', 'EUR', '€'),
(63, 'Czechia', 'Czech koruna', 'CZK', 'Kč'),
(64, 'Denmark', 'Danish krone', 'DKK', 'kr'),
(65, 'Djibouti', 'Djiboutian franc', 'DJF', 'Fdj'),
(66, 'Dominica', 'East Caribbean dollar', 'XCD', '$'),
(67, 'Dominican Republic', 'Dominican peso', 'DOP', 'RD$'),
(68, 'Ecuador', 'United States dollar', 'USD', '$'),
(69, 'Egypt', 'Egyptian pound', 'EGP', '£'),
(70, 'El Salvador', 'United States dollar', 'USD', '$'),
(71, 'Equatorial Guinea', 'Central African CFA franc', 'XAF', 'FCFA'),
(72, 'Eritrea', 'Eritrean nakfa', 'ERN', 'Nkf'),
(73, 'Estonia', 'European euro', 'EUR', '€'),
(74, 'Eswatini (formerly Swaziland)', 'Swazi lilangeni', 'SZL', 'L'),
(75, 'Ethiopia', 'Ethiopian birr', 'ETB', 'Br'),
(76, 'Falkland Islands (UK)', 'Falkland Islands pound', 'FKP', '£'),
(77, 'Faroe Islands (Denmark)', 'Faroese krona', 'FK', '$'),
(78, 'Fiji', 'Fijian dollar', 'FJD', '$'),
(79, 'Finland', 'European euro', 'EUR', '€'),
(80, 'France', 'European euro', 'EUR', '€'),
(81, 'French Guiana (France)', 'European euro', 'EUR', '€'),
(82, 'French Polynesia (France)', 'CFP franc', 'XPF', '₣'),
(83, 'Gabon', 'Central African CFA franc', 'XAF', 'FCFA'),
(84, 'Gambia', 'Gambian dalasi', 'GMD', 'D'),
(85, 'Georgia', 'Georgian lari', 'GEL', 'ლ'),
(86, 'Germany', 'European euro', 'EUR', '€'),
(87, 'Ghana', 'Ghanaian cedi', 'GHS', 'GH₵'),
(88, 'Gibraltar (UK)', 'Gibraltar pound', 'GIP', '£'),
(89, 'Greece', 'European euro', 'EUR', '€'),
(90, 'Greenland (Denmark)', 'Danish krone', 'DKK', 'kr'),
(91, 'Grenada', 'East Caribbean dollar', 'XCD', '$'),
(92, 'Guadeloupe (France)', 'European euro', 'EUR', '€'),
(93, 'Guam (USA)', 'United States dollar', 'USD', '$'),
(94, 'Guatemala', 'Guatemalan quetzal', 'GTQ', 'Q'),
(95, 'Guernsey (UK)', 'Guernsey Pound', 'GGP', '£'),
(96, 'Guinea', 'Guinean franc', 'GNF', 'FG'),
(97, 'Guinea-Bissau', 'West African CFA franc', 'XOF', 'CFA'),
(98, 'Guyana', 'Guyanese dollar', 'GYD', '$'),
(100, 'Honduras', 'Honduran lempira', 'HNL', 'L'),
(101, 'Hong Kong (China)', 'Hong Kong dollar', 'HKD', '$'),
(102, 'Hungary', 'Hungarian forint', 'HUF', 'Ft'),
(103, 'Iceland', 'Icelandic krona', 'ISK', 'kr'),
(104, 'India', 'Indian rupee', 'INR', '₹'),
(105, 'Indonesia', 'Indonesian rupiah', 'IDR', 'Rp'),
(107, 'Iran', 'Iranian rial', 'IRR', '﷼'),
(108, 'Iraq', 'Iraqi dinar', 'IQD', 'ع.د'),
(109, 'Ireland', 'European euro', 'EUR', '€'),
(110, 'Isle of Man (UK)', 'Manx pound', 'IMP', '£'),
(111, 'Israel', 'Israeli new shekel', 'ILS', '₪'),
(112, 'Italy', 'European euro', 'EUR', '€'),
(113, 'Jamaica', 'Jamaican dollar', 'JMD', 'J$'),
(114, 'Japan', 'Japanese yen', 'JPY', '¥'),
(115, 'Jersey (UK)', 'Jersey pound', 'JEP', '£'),
(116, 'Jordan', 'Jordanian dinar', 'JOD', 'د.ا'),
(117, 'Kazakhstan', 'Kazakhstani tenge', 'KZT', 'лв'),
(118, 'Kenya', 'Kenyan shilling', 'KES', 'Ksh'),
(119, 'Kiribati', 'Australian dollar', 'USD', '$'),
(120, 'Kosovo', 'European euro', 'EUR', '€'),
(121, 'Kuwait', 'Kuwaiti dinar', 'KWD', 'د.ك'),
(122, 'Kyrgyzstan', 'Kyrgyzstani som', 'KGS', 'лв'),
(123, 'Laos', 'Lao kip', 'LAK', '₭'),
(124, 'Latvia', 'European euro', 'EUR', '€'),
(125, 'Lebanon', 'Lebanese pound', 'LBP', '£'),
(127, 'Liberia', 'Liberian dollar', 'LRD', '$'),
(128, 'Libya', 'Libyan dinar', 'LYD', 'ل.د'),
(129, 'Liechtenstein', 'Swiss franc', 'CHF', 'CHF'),
(130, 'Lithuania', 'European euro', 'EUR', '€'),
(131, 'Luxembourg', 'European euro', 'EUR', '€'),
(132, 'Macau (China)', 'Macanese pataca', 'MOP', 'MOP$'),
(133, 'Madagascar', 'Malagasy ariary', 'MGA', 'Ar'),
(134, 'Malawi', 'Malawian kwacha', 'MWK', 'MK'),
(135, 'Malaysia', 'Malaysian ringgit', 'MYR', 'RM'),
(136, 'Maldives', 'Maldivian rufiyaa', 'MVR', 'Rf'),
(137, 'Mali', 'West African CFA franc', 'XOF', 'CFA'),
(138, 'Malta', 'European euro', 'EUR', '€'),
(139, 'Marshall Islands', 'United States dollar', 'USD', '$'),
(140, 'Martinique (France)', 'European euro', 'EUR', '€'),
(142, 'Mauritius', 'Mauritian rupee', 'MUR', '₨'),
(143, 'Mayotte (France)', 'European euro', 'EUR', '€'),
(144, 'Mexico', 'Mexican peso', 'MXN', '$'),
(145, 'Micronesia', 'United States dollar', 'USD', '$'),
(146, 'Moldova', 'Moldovan leu', 'MDL', 'L'),
(147, 'Monaco', 'European euro', 'EUR', '€'),
(148, 'Mongolia', 'Mongolian tugrik', 'MNT', '₮'),
(149, 'Montenegro', 'European euro', 'EUR', '€'),
(150, 'Montserrat (UK)', 'East Caribbean dollar', 'XCD', '$'),
(151, 'Morocco', 'Moroccan dirham', 'MAD', 'MAD'),
(152, 'Mozambique', 'Mozambican metical', 'MZN', 'MT'),
(153, 'Myanmar (formerly Burma)', 'Myanmar kyat', 'MMK', 'K'),
(154, 'Namibia', 'Namibian dollar', 'NAD', '$'),
(155, 'Nauru', 'Australian dollar', 'USD', '$'),
(156, 'Nepal', 'Nepalese rupee', 'NPR', '₨'),
(157, 'Netherlands', 'European euro', 'EUR', '€'),
(158, 'New Caledonia (France)', 'CFP franc', 'XPF', '₣'),
(159, 'New Zealand', 'New Zealand dollar', 'NZD', '$'),
(160, 'Nicaragua', 'Nicaraguan cordoba', 'NIO', 'C$'),
(161, 'Niger', 'West African CFA franc', 'XOF', 'CFA'),
(162, 'Nigeria', 'Nigerian naira', 'NGN', '₦'),
(163, 'Niue (New Zealand)', 'New Zealand dollar', 'NZD', '$'),
(164, 'Norfolk Island (Australia)', 'Australian dollar', 'USD', '$'),
(165, 'Northern Mariana Islands (USA)', 'United States dollar', 'USD', '$'),
(166, 'North Korea', 'North Korean won', 'KPW', '₩'),
(167, 'North Macedonia (formerly Macedonia)', 'Macedonian denar', 'MKD', 'ден'),
(168, 'Norway', 'Norwegian krone', 'NOK', 'kr'),
(169, 'Oman', 'Omani rial', 'OMR', '﷼'),
(170, 'Pakistan', 'Pakistani rupee', 'PKR', '₨'),
(171, 'Palau', 'United States dollar', 'USD', '$'),
(172, 'Palestine', 'Israeli new shekel', 'ILS', '₪'),
(173, 'Panama', 'United States dollar', 'USD', '$'),
(174, 'Papua New Guinea', 'Papua New Guinean kina', 'PGK', 'K'),
(175, 'Paraguay', 'Paraguayan guarani', 'PYG', 'Gs'),
(176, 'Peru', 'Peruvian sol', 'PEN', 'S/.'),
(177, 'Philippines', 'Philippine peso', 'PHP', 'Php'),
(178, 'Pitcairn Islands (UK)', 'New Zealand dollar', 'NZD', '$'),
(179, 'Poland', 'Polish zloty', 'PLN', 'zł'),
(180, 'Portugal', 'European euro', 'EUR', '€'),
(181, 'Puerto Rico (USA)', 'United States dollar', 'USD', '$'),
(182, 'Qatar', 'Qatari riyal', 'QAR', '﷼'),
(183, 'Reunion (France)', 'European euro', 'EUR', '€'),
(184, 'Romania', 'Romanian leu', 'RON', 'lei'),
(185, 'Russia', 'Russian ruble', 'RUB', 'руб'),
(186, 'Rwanda', 'Rwandan franc', 'RWF', 'R₣'),
(187, 'Saba (Netherlands)', 'United States dollar', 'USD', '$'),
(188, 'Saint Barthelemy (France)', 'European euro', 'EUR', '€'),
(189, 'Saint Helena (UK)', 'Saint Helena pound', 'SHP', '£'),
(190, 'Saint Kitts and Nevis', 'East Caribbean dollar', 'XCD', '$'),
(191, 'Saint Lucia', 'East Caribbean dollar', 'XCD', '$'),
(192, 'Saint Martin (France)', 'European euro', 'EUR', '€'),
(193, 'Saint Pierre and Miquelon (France)', 'European euro', 'EUR', '€'),
(194, 'Saint Vincent and the Grenadines', 'East Caribbean dollar', 'XCD', '$'),
(195, 'Samoa', 'Samoan tala', 'WST', 'WS$'),
(196, 'San Marino', 'European euro', 'EUR', '€'),
(198, 'Saudi Arabia', 'Saudi Arabian riyal', 'SAR', '﷼'),
(199, 'Senegal', 'West African CFA franc', 'XOF', 'CFA'),
(200, 'Serbia', 'Serbian dinar', 'RSD', 'Дин.'),
(201, 'Seychelles', 'Seychellois rupee', 'SCR', '₨'),
(202, 'Sierra Leone', 'Sierra Leonean leone', 'SLL', 'Le'),
(203, 'Singapore', 'Singapore dollar', 'SGD', '$'),
(204, 'Sint Eustatius (Netherlands)', 'United States dollar', 'USD', '$'),
(205, 'Sint Maarten (Netherlands)', 'Netherlands Antillean guilder', 'ANG', 'ƒ'),
(206, 'Slovakia', 'European euro', 'EUR', '€'),
(207, 'Slovenia', 'European euro', 'EUR', '€'),
(208, 'Solomon Islands', 'Solomon Islands dollar', 'SBD', '$'),
(209, 'Somalia', 'Somali shilling', 'SOS', 'S'),
(210, 'South Africa', 'South African rand', 'ZAR', 'R'),
(211, 'South Georgia Island (UK)', 'Pound sterling', 'GBP', '£'),
(212, 'South Korea', 'South Korean won', 'KRW', '₩'),
(213, 'South Sudan', 'South Sudanese pound', 'SSP', '£'),
(214, 'Spain', 'European euro', 'EUR', '€'),
(215, 'Sri Lanka', 'Sri Lankan rupee', 'LKR', '₨'),
(216, 'Sudan', 'Sudanese pound', 'SDG', 'ج.س'),
(217, 'Suriname', 'Surinamese dollar', 'SRD', '$'),
(218, 'Svalbard and Jan Mayen (Norway)', 'Norwegian krone', 'NOK', 'kr'),
(219, 'Sweden', 'Swedish krona', 'SEK', 'kr'),
(220, 'Switzerland', 'Swiss franc', 'CHF', 'CHF'),
(221, 'Syria', 'Syrian pound', 'SYP', '£'),
(222, 'Taiwan', 'New Taiwan dollar', 'TWD', 'NT$'),
(223, 'Tajikistan', 'Tajikistani somoni', 'TJS', 'SM'),
(224, 'Tanzania', 'Tanzanian shilling', 'TZS', 'TSh'),
(225, 'Thailand', 'Thai baht', 'THB', '฿'),
(226, 'Timor-Leste', 'United States dollar', 'USD', '$'),
(227, 'Togo', 'West African CFA franc', 'XOF', 'CFA'),
(228, 'Tokelau (New Zealand)', 'New Zealand dollar', 'NZD', '$'),
(229, 'Tonga', 'Tongan pa’anga', 'TOP', 'T$'),
(230, 'Trinidad and Tobago', 'Trinidad and Tobago dollar', 'TTD', 'TT$'),
(231, 'Tristan da Cunha (UK)', 'Pound sterling', 'GBP', '£'),
(232, 'Tunisia', 'Tunisian dinar', 'TND', 'DT'),
(233, 'Turkey', 'Turkish lira', 'TRY', '₺'),
(234, 'Turkmenistan', 'Turkmen manat', 'TMT', 'T'),
(235, 'Turks and Caicos Islands (UK)', 'United States dollar', 'USD', '$'),
(236, 'Tuvalu', 'Australian dollar', 'USD', '$'),
(237, 'Uganda', 'Ugandan shilling', 'UGX', 'USh'),
(238, 'Ukraine', 'Ukrainian hryvnia', 'UAH', '₴'),
(239, 'United Arab Emirates', 'UAE dirham', 'AED', 'د.إ'),
(240, 'United Kingdom', 'Pound sterling', 'GBP', '£'),
(241, 'United States of America', 'United States dollar', 'USD', '$'),
(242, 'Uruguay', 'Uruguayan peso', 'UYU', '$U'),
(243, 'US Virgin Islands (USA)', 'United States dollar', 'USD', '$'),
(244, 'Uzbekistan', 'Uzbekistani som', 'UZS', 'лв'),
(246, 'Vatican City (Holy See)', 'European euro', 'EUR', '€'),
(248, 'Vietnam', 'Vietnamese dong', 'VND', '₫'),
(249, 'Wake Island (USA)', 'United States dollar', 'USD', '$'),
(250, 'Wallis and Futuna (France)', 'CFP franc', 'XPF', '₣'),
(251, 'Yemen', 'Yemeni rial', 'YER', '﷼'),
(252, 'Zambia', 'Zambian kwacha', 'ZMW', 'ZK'),
(253, 'Zimbabwe', 'United States dollar', 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `product_id`, `start_at`, `end_at`, `status`, `created_at`, `updated_at`) VALUES
(3, 4, '2024-02-01 13:48:00', '2025-02-01 13:48:00', 1, '2024-01-09 13:01:55', '2024-02-01 07:48:34'),
(6, 2, '2024-01-01 13:47:00', '2025-02-01 13:47:00', 1, '2024-01-09 13:17:00', '2024-02-01 07:47:35'),
(7, 3, '2024-02-01 01:44:00', '2025-02-01 13:44:00', 1, '2024-01-09 13:17:13', '2024-02-01 07:44:36'),
(8, 1, '2024-01-31 01:55:00', '2025-02-01 13:42:00', 1, '2024-01-30 05:36:38', '2024-02-01 07:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_features`
--

CREATE TABLE `home_features` (
  `id` int NOT NULL,
  `feature_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_size` tinyint DEFAULT NULL,
  `feature_url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_serial` int DEFAULT NULL,
  `feature_status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_features`
--

INSERT INTO `home_features` (`id`, `feature_title`, `feature_image`, `feature_size`, `feature_url`, `feature_serial`, `feature_status`, `created_at`, `updated_at`) VALUES
(1, 'Import Collections', 'feature-img-1704795039.jpg', 1, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/baby-foldable-bath-tub-pad-adjustable-comfortable-non-slip-baby-bath-seat-infant-safety-shower-antiskid-cushion-plastic-net-mat-baby-shower-net-bathtub-sit-up-mesh-for-newborn', 1, 1, NULL, '2024-01-09 10:10:39'),
(2, 'Import Collections', 'feature-img-1704795064.jpg', 2, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/car-seat-back-tray-paper-towel-storage-box-car-hanging-tissue-box-cartoon-lovely-hanging-pumping-paper-towel-tray', 2, 1, NULL, '2024-01-09 10:11:04'),
(3, 'Import Collections', 'feature-img-1704794997.jpg', 3, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-', 3, 1, NULL, '2024-01-09 10:09:57'),
(4, 'New 3 piece collections', 'feature-img-1704794969.jpg', 4, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/baby-foldable-bath-tub-pad-adjustable-comfortable-non-slip-baby-bath-seat-infant-safety-shower-antiskid-cushion-plastic-net-mat-baby-shower-net-bathtub-sit-up-mesh-for-newborn', 4, 1, NULL, '2024-01-09 10:09:29'),
(5, 'Import Collections', 'feature-img-1704889961.jpg', 5, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/baby-foldable-bath-tub-pad-adjustable-comfortable-non-slip-baby-bath-seat-infant-safety-shower-antiskid-cushion-plastic-net-mat-baby-shower-net-bathtub-sit-up-mesh-for-newborn', 5, 1, NULL, '2024-01-10 12:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `child_id` int NOT NULL DEFAULT '0',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `child_id`, `menu_name`, `route`, `created_at`, `updated_at`) VALUES
(1, 0, -1, 'Dashboard', 'dashboard.index', NULL, NULL),
(3, 1, -1, 'Total Sales', NULL, NULL, NULL),
(4, 1, -1, 'Total Orders', NULL, NULL, NULL),
(5, 1, -1, 'New Orders', NULL, NULL, NULL),
(6, 1, -1, 'Pending Orders', NULL, NULL, NULL),
(7, 1, -1, 'Total Products', NULL, NULL, NULL),
(8, 1, -1, 'Active Products', NULL, NULL, NULL),
(9, 1, -1, 'Total Customers', NULL, NULL, NULL),
(10, 1, -1, 'New Customers', NULL, NULL, NULL),
(11, 1, -1, 'Latest Orders', NULL, NULL, NULL),
(12, 0, -1, 'Basic Info Manage', 'basic-infos.index', NULL, NULL),
(13, 12, 0, 'Edit', 'basic-infos.edit', NULL, NULL),
(14, 0, -1, 'Admin', NULL, NULL, NULL),
(15, 14, 0, 'Role Manage', 'roles.index', NULL, NULL),
(16, -1, 15, 'Add', 'roles.create', NULL, NULL),
(17, -1, 15, 'Edit', 'roles.edit', NULL, NULL),
(18, -1, 15, 'Delete', 'roles.destroy', NULL, NULL),
(19, 14, 0, 'Admin Manage', 'admins.index', NULL, NULL),
(20, -1, 19, 'Add', 'admins.create', NULL, NULL),
(21, -1, 19, 'Edit', 'admins.edit', NULL, NULL),
(22, -1, 19, 'Delete', 'admins.destroy', NULL, NULL),
(23, 0, -1, 'Settings', NULL, NULL, NULL),
(26, 23, -1, 'Update Password', 'admins.update.password', NULL, NULL),
(27, 23, -1, 'Update Details', 'admins.update.details', NULL, NULL),
(28, 0, -1, 'Catalogue Manage', NULL, NULL, NULL),
(29, 28, -1, 'Category', 'categories.index', NULL, NULL),
(30, -1, 29, 'Add', 'categories.create', NULL, NULL),
(31, -1, 29, 'Edit', 'categories.edit', NULL, NULL),
(32, -1, 29, 'Delete', 'categories.destroy', NULL, NULL),
(33, 28, -1, 'Sub Category', 'sub-categories.index', NULL, NULL),
(34, -1, 33, 'Add', 'sub-categories.create', NULL, NULL),
(35, -1, 33, 'Edit', 'sub-categories.edit', NULL, NULL),
(36, -1, 33, 'Delete', 'sub-categories.destroy', NULL, NULL),
(38, 28, -1, 'Sub Child', 'sub-child.index', NULL, NULL),
(39, -1, 38, 'Add', 'sub-child.create', NULL, NULL),
(40, -1, 38, 'Edit', 'sub-child.edit', NULL, NULL),
(41, -1, 38, 'Delete', 'sub-child.destroy', NULL, NULL),
(42, 28, -1, 'Color', 'colors.index', NULL, NULL),
(43, -1, 42, 'Add', 'colors.create', NULL, NULL),
(44, -1, 42, 'Edit', 'colors.edit', NULL, NULL),
(45, -1, 42, 'Delete', 'colors.destroy', NULL, NULL),
(46, 28, -1, 'Product', 'products.index', NULL, NULL),
(47, -1, 46, 'Add', 'products.create', NULL, NULL),
(48, -1, 46, 'Edit', 'products.edit', NULL, NULL),
(49, -1, 46, 'Delete', 'products.destroy', NULL, NULL),
(50, 0, -1, 'Order Manage', 'orders.index', NULL, NULL),
(51, 50, -1, 'Edit', 'orders.edit', NULL, NULL),
(52, 50, -1, 'Print', 'orders.print', NULL, NULL),
(53, 0, -1, 'Customer Manage', 'customers.index', NULL, NULL),
(54, 0, -1, 'Today\'s Deal Manage', 'deals.index', NULL, NULL),
(55, 54, 0, 'Add', 'deals.create', NULL, NULL),
(56, 54, 0, 'Edit', 'deals.edit', NULL, NULL),
(57, 54, 0, 'Delete', 'deals.destroy', NULL, NULL),
(58, 0, -1, 'Home Feature Manage', 'home-features.index', NULL, NULL),
(59, 58, 0, 'Edit', 'home-features.edit', NULL, NULL),
(60, 0, -1, ' Blog Category Manage', 'blog-category.index', NULL, NULL),
(61, 60, 0, 'Add', 'blog-category.create', NULL, NULL),
(62, 60, 0, 'Edit', 'blog-category.edit', NULL, NULL),
(63, 60, 0, 'Delete', 'blog-category.destroy', NULL, NULL),
(64, 0, -1, 'Blog Manage', 'blogs.index', NULL, NULL),
(65, 64, 0, 'Add', 'blogs.create', NULL, NULL),
(66, 64, 0, 'Edit', 'blogs.edit', NULL, NULL),
(67, 64, 0, 'Delete', 'blogs.destroy', NULL, NULL),
(68, 0, -1, 'About Us Manage', 'about-us.index', NULL, NULL),
(69, 68, 0, 'Edit', 'about-us.edit', NULL, NULL),
(70, 0, 0, 'Slider Manage', 'sliders.index', NULL, NULL),
(71, 70, 0, 'Add', 'sliders.create', NULL, NULL),
(72, 70, 0, 'Edit', 'sliders.edit', NULL, NULL),
(73, 70, 0, 'Delete', 'sliders.destroy', NULL, NULL),
(74, 0, 0, 'Review Manage', 'reviews.index', NULL, NULL),
(75, 74, 0, 'Edit', 'reviews.edit', NULL, NULL),
(76, 0, 0, 'Coupons Manage', 'coupons_manage.index', NULL, NULL),
(77, 76, 0, 'Add', 'coupons_manage.create', NULL, NULL),
(78, 76, 0, 'Edit', 'coupons_manage.edit', NULL, NULL),
(79, 76, 0, 'Delete', 'coupons_manage.destroy', NULL, NULL),
(80, 0, 0, 'Message Manage', 'messages.index', NULL, NULL),
(81, 80, 0, 'Status', 'messages.status', NULL, NULL),
(82, 80, 0, 'Delete', 'messages.destroy', NULL, NULL),
(83, 0, 0, 'Service Manage', 'services.index', NULL, NULL),
(84, 83, 0, 'Add', 'services.create', NULL, NULL),
(85, 83, 0, 'Edit', 'services.edit', NULL, NULL),
(86, 83, 0, 'Delete', 'services.destroy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `first_name`, `last_name`, `email`, `phone`, `message`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Nowab', 'Shorif', 'nsanoman@gmail.com', '01839317038', 'Check', 1, '2023-12-17 10:43:40', '2023-12-17 11:45:45'),
(6, 'Nowab', 'Shorif', 'nsanoman@gmail.com', '01839317038', 'Test', 1, '2023-12-17 10:45:09', '2023-12-17 11:51:09'),
(9, 'Nowab', 'Shorif', 'nsanoman@gmail.com', '01839317038', 'My Test', 1, '2023-12-17 11:23:51', '2023-12-17 11:49:51'),
(10, 'Nowab', 'Shorif', 'nsanoman@gmail.com', '01839317038', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '2023-12-18 08:49:50', '2023-12-18 08:49:50');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2023_10_21_001204_create_basic_infos_table', 2),
(36, '2023_12_12_182111_create_sliders_table', 3),
(37, '2023_12_13_144516_create_categories_table', 4),
(38, '2023_12_14_111453_create_sub_categories_table', 5),
(39, '2023_12_17_115144_create_sub_children_table', 6),
(40, '2023_12_17_151807_create_messages_table', 7),
(43, '2023_12_18_134353_create_services_table', 8),
(44, '2023_12_26_114309_create_admins_table', 9),
(46, '2023_12_26_173236_create_colors_table', 10),
(47, '2023_12_26_181020_create_sizes_table', 11),
(48, '2014_10_12_000000_create_users_table', 12),
(53, '2023_12_26_170202_create_products_table', 13),
(54, '2023_12_26_185051_create_product_details_table', 13),
(56, '2023_05_10_120026_create_coupons_table', 14),
(58, '2023_08_31_095228_create_address_books_table', 15),
(61, '2024_01_03_115653_create_orders_table', 16),
(62, '2024_01_03_115957_create_order_details_table', 16),
(63, '2024_01_08_142119_create_reviews_table', 17),
(64, '2023_05_30_140820_create_home_features_table', 18),
(65, '2024_01_09_162914_create_deals_table', 19),
(66, '2023_05_04_064246_create_blog_categories_table', 20),
(67, '2023_05_04_093412_create_blogs_table', 21),
(68, '2024_01_16_185428_create_about_us_table', 22),
(71, '2024_01_21_125641_create_category_langs_table', 23),
(72, '2024_01_23_115348_create_category_translations_table', 24),
(73, '2024_01_23_142659_create_sub_category_translations_table', 25),
(74, '2024_01_23_152033_create_sub_child_translations_table', 26),
(75, '2024_01_23_172851_create_product_translations_table', 27),
(76, '2024_01_24_115645_create_blog_category_translations_table', 28),
(77, '2024_01_24_124650_create_blog_translations_table', 29),
(79, '2024_01_24_135619_create_service_translations_table', 30),
(80, '2024_01_24_143300_create_basic_info_translations_table', 31),
(81, '2024_01_30_123321_create_roles_table', 32),
(82, '2024_01_30_123933_create_privileges_table', 33),
(83, '2024_01_30_140322_create_menus_table', 33);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_no` int NOT NULL,
  `user_id` int NOT NULL,
  `shipping_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_id` int DEFAULT NULL,
  `shipping_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_id` int DEFAULT NULL,
  `billing_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` double(20,2) NOT NULL DEFAULT '0.00',
  `total_qty` double(20,2) NOT NULL DEFAULT '0.00',
  `total_price` double(20,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_discount` double(20,2) NOT NULL DEFAULT '0.00',
  `shipping_charge` double(20,2) NOT NULL DEFAULT '0.00',
  `payable_amount` double(20,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(20,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_updated_at` datetime DEFAULT NULL,
  `order_datetime` datetime DEFAULT NULL,
  `order_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_updated_at` datetime DEFAULT NULL,
  `tracking_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `user_id`, `shipping_first_name`, `shipping_last_name`, `shipping_company_name`, `shipping_country_id`, `shipping_street_address`, `shipping_city`, `shipping_state`, `shipping_zip_code`, `shipping_phone`, `shipping_email`, `billing_first_name`, `billing_last_name`, `billing_company_name`, `billing_country_id`, `billing_street_address`, `billing_city`, `billing_state`, `billing_zip_code`, `billing_phone`, `billing_email`, `total_weight`, `total_qty`, `total_price`, `coupon_code`, `total_discount`, `shipping_charge`, `payable_amount`, `paid_amount`, `payment_method`, `payment_status`, `payment_updated_at`, `order_datetime`, `order_status`, `order_updated_at`, `tracking_no`, `shipped_by`, `shipping_option`, `order_from`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1704271302, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 2.00, 525.00, 'fwusa', 78.75, 105.00, 551.25, 551.25, 'Cash Payment', 'Paid', '2024-01-03 14:41:42', '2024-01-03 14:41:42', 'Processing', '2024-01-03 14:41:42', '1704271302', 'www.fedex.com', 'Over Night', NULL, '', '2024-01-03 08:41:42', '2024-01-04 05:53:28'),
(2, 1704271459, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 2.00, 525.00, 'fwusa', 78.75, 105.00, 551.25, 0.00, 'Cash Payment', 'Unpaid', '2024-01-03 14:44:19', '2024-01-03 14:44:19', 'Pending', '2024-01-03 14:44:19', '1704271459', 'www.fedex.com', 'Over Night', NULL, '', '2024-01-03 08:44:19', '2024-01-03 08:44:19'),
(3, 1704271550, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 2.00, 525.00, 'fwusa', 78.75, 105.00, 551.25, 0.00, 'Cash Payment', 'Paid', '2024-01-03 14:45:50', '2024-01-03 14:45:50', 'Delivered', '2024-01-03 14:45:50', '1704271550', 'www.fedex.com', 'Over Night', NULL, NULL, '2024-01-03 08:45:50', '2024-01-18 08:17:49'),
(4, 1704271757, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 2.00, 525.00, 'fwusa', 78.75, 105.00, 551.25, 0.00, 'Cash Payment', 'Paid', '2024-01-03 14:49:17', '2024-01-03 14:49:17', 'Delivered', '2024-01-03 14:49:17', '1704271757', 'www.fedex.com', 'Over Night', NULL, NULL, '2024-01-03 08:49:17', '2024-01-18 08:17:38'),
(5, 1704271798, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 3.00, 650.00, 'fwusa', 97.50, 130.00, 682.50, 0.00, 'Others', 'Paid', '2024-01-03 14:49:58', '2024-01-03 14:49:58', 'Delivered', '2024-01-03 14:49:58', '1704271798', 'www.fedex.com', 'Over Night', NULL, NULL, '2024-01-03 08:49:58', '2024-01-18 08:17:28'),
(6, 1704286373, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 4.00, 1050.00, 'fwusa', 157.50, 210.00, 1102.50, 0.00, 'Others', 'Unpaid', '2024-01-03 18:52:53', '2024-01-03 18:52:53', 'Shipped', '2024-01-03 18:52:53', '1704286373', 'www.ups.com', 'Over Night', NULL, NULL, '2024-01-03 12:52:53', '2024-01-14 08:42:28'),
(7, 1704286409, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 4.00, 1050.00, 'fwusa', 157.50, 210.00, 1102.50, 0.00, 'Cash Payment', 'Paid', '2024-01-03 18:53:29', '2024-01-03 18:53:29', 'Delivered', '2024-01-03 18:53:29', '1704286409', 'www.ups.com', 'Ground', NULL, NULL, '2024-01-03 12:53:29', '2024-01-18 08:17:59'),
(8, 1704287427, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1500.00, 3.00, 1024.00, '', 0.00, 204.80, 1228.80, 1228.80, 'Cash Payment', 'Paid', '2024-01-03 19:10:27', '2024-01-03 19:10:27', 'Delivered', '2024-01-03 19:10:27', '1704287427', 'www.ups.com', 'Ground', NULL, NULL, '2024-01-03 13:10:27', '2024-01-18 08:07:21'),
(9, 1704890798, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 544.00, 4.00, 886.00, '', 0.00, 177.20, 1063.20, 0.00, 'Cash Payment', 'Unpaid', '2024-01-10 18:46:38', '2024-01-10 18:46:38', 'Pending', '2024-01-10 18:46:38', '1704890798', NULL, NULL, NULL, 'Nowab Shorif', '2024-01-10 12:46:38', '2024-01-10 12:46:38'),
(10, 1705218688, 1, 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Nowab Shorif', 'Noman', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 1000.00, 2.00, 530.00, '', 0.00, 106.00, 636.00, 0.00, 'Cash Payment', 'Paid', '2024-01-14 13:51:28', '2024-01-14 13:51:28', 'Delivered', '2024-01-14 13:51:28', '1705218688', 'www.ups.com', 'Ground', NULL, 'Nowab Shorif', '2024-01-14 07:51:28', '2024-01-18 08:17:12'),
(11, 1705406922, 1, 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 500.00, 1.00, 500.00, '', 0.00, 100.00, 600.00, 0.00, 'Cash Payment', 'Paid', '2024-01-16 18:08:42', '2024-01-16 18:08:42', 'Delivered', '2024-01-16 18:08:42', '1705406922', 'www.ups.com', 'Ground', NULL, NULL, '2024-01-16 12:08:42', '2024-01-18 08:16:31'),
(12, 1705743979, 1, 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 944.00, 2.00, 4569.00, 'nsa', 2056.05, 913.80, 3426.75, 0.00, 'Cash Payment', 'Unpaid', '2024-01-20 15:46:19', '2024-01-20 15:46:19', 'Pending', '2024-01-20 15:46:19', '1705743979', NULL, NULL, NULL, NULL, '2024-01-20 09:46:19', '2024-01-20 09:46:19'),
(13, 1705744020, 1, 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 'Cash Payment', 'Unpaid', '2024-01-20 15:47:00', '2024-01-20 15:47:00', 'Pending', '2024-01-20 15:47:00', '1705744020', NULL, NULL, NULL, NULL, '2024-01-20 09:47:00', '2024-01-20 09:47:00'),
(14, 1706590589, 1, 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 'Malek', 'Azad', 'SDL', 1, 'Companygonj, Noakhali.', 'Dhaka', 'ewfrwf', '3280', '+8801839317038', 'admin@gmail.com', 500.00, 1.00, 125.00, 'nsa', 56.25, 25.00, 93.75, 0.00, 'Cash Payment', 'Unpaid', '2024-01-30 10:56:29', '2024-01-30 10:56:29', 'Pending', '2024-01-30 10:56:29', '1706590589', NULL, NULL, NULL, NULL, '2024-01-30 04:56:29', '2024-01-30 04:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `color_id` int NOT NULL,
  `size_id` int NOT NULL DEFAULT '0',
  `quantity` double(20,2) NOT NULL,
  `price` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 2, 1.00, 400.00, '2024-01-03 08:41:42', '2024-01-03 08:41:42'),
(2, 1, 2, 1, 1, 1.00, 125.00, '2024-01-03 08:41:42', '2024-01-03 08:41:42'),
(3, 2, 4, 1, 2, 1.00, 400.00, '2024-01-03 08:44:19', '2024-01-03 08:44:19'),
(4, 2, 2, 1, 1, 1.00, 125.00, '2024-01-03 08:44:19', '2024-01-03 08:44:19'),
(5, 3, 4, 1, 2, 1.00, 400.00, '2024-01-03 08:45:50', '2024-01-03 08:45:50'),
(6, 3, 2, 1, 1, 1.00, 125.00, '2024-01-03 08:45:50', '2024-01-03 08:45:50'),
(7, 4, 4, 1, 2, 1.00, 400.00, '2024-01-03 08:49:17', '2024-01-03 08:49:17'),
(8, 4, 2, 1, 1, 1.00, 125.00, '2024-01-03 08:49:17', '2024-01-03 08:49:17'),
(9, 5, 4, 1, 2, 1.00, 400.00, '2024-01-03 08:49:58', '2024-01-03 08:49:58'),
(10, 5, 2, 1, 1, 2.00, 125.00, '2024-01-03 08:49:58', '2024-01-03 08:49:58'),
(11, 6, 4, 1, 2, 2.00, 400.00, '2024-01-03 12:52:53', '2024-01-03 12:52:53'),
(12, 6, 2, 1, 1, 2.00, 125.00, '2024-01-03 12:52:53', '2024-01-03 12:52:53'),
(13, 7, 4, 1, 2, 2.00, 400.00, '2024-01-03 12:53:29', '2024-01-03 12:53:29'),
(14, 7, 2, 1, 1, 2.00, 125.00, '2024-01-03 12:53:29', '2024-01-03 12:53:29'),
(15, 8, 3, 2, 2, 1.00, 500.00, '2024-01-03 13:10:27', '2024-01-03 13:10:27'),
(16, 8, 2, 1, 1, 1.00, 125.00, '2024-01-03 13:10:27', '2024-01-03 13:10:27'),
(17, 8, 1, 1, 5, 1.00, 399.00, '2024-01-03 13:10:27', '2024-01-03 13:10:27'),
(18, 9, 5, 1, 1, 2.00, 44.00, '2024-01-10 12:46:38', '2024-01-10 12:46:38'),
(19, 9, 1, 1, 1, 2.00, 399.00, '2024-01-10 12:46:38', '2024-01-10 12:46:38'),
(20, 10, 4, 1, 2, 1.00, 30.00, '2024-01-14 07:51:28', '2024-01-14 07:51:28'),
(21, 10, 3, 1, 1, 1.00, 500.00, '2024-01-14 07:51:28', '2024-01-14 07:51:28'),
(22, 11, 3, 1, 1, 1.00, 500.00, '2024-01-16 12:08:42', '2024-01-16 12:08:42'),
(23, 12, 7, 1, 1, 1.00, 4444.00, '2024-01-20 09:46:19', '2024-01-20 09:46:19'),
(24, 12, 2, 1, 1, 1.00, 125.00, '2024-01-20 09:46:19', '2024-01-20 09:46:19'),
(25, 14, 2, 1, 1, 1.00, 125.00, '2024-01-30 04:56:29', '2024-01-30 04:56:29');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(458, 4, 28, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(459, 4, 29, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(460, 4, 30, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(461, 4, 31, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(462, 4, 32, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(463, 4, 33, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(464, 4, 34, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(465, 4, 35, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(466, 4, 36, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(467, 4, 38, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(468, 4, 39, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(469, 4, 40, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(470, 4, 41, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(471, 4, 42, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(472, 4, 43, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(473, 4, 44, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(474, 4, 45, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(475, 4, 46, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(476, 4, 47, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(477, 4, 48, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(478, 4, 49, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(479, 4, 1, '2024-01-31 13:03:26', '2024-01-31 13:03:26'),
(501, 2, 1, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(502, 2, 28, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(503, 2, 46, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(504, 2, 47, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(505, 2, 48, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(506, 2, 49, '2024-01-31 13:04:05', '2024-01-31 13:04:05'),
(513, 5, 1, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(514, 5, 23, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(515, 5, 26, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(516, 5, 27, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(517, 5, 28, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(518, 5, 46, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(519, 5, 47, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(520, 5, 48, '2024-01-31 13:16:03', '2024-01-31 13:16:03'),
(521, 5, 49, '2024-01-31 13:16:03', '2024-01-31 13:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` int NOT NULL,
  `sub_cat_id` int NOT NULL,
  `sub_child_id` int NOT NULL DEFAULT '0',
  `product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` double(20,2) DEFAULT NULL,
  `new_price` double(20,2) NOT NULL,
  `product_weight` double(10,2) NOT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_hits` int NOT NULL DEFAULT '0',
  `total_sale` int NOT NULL DEFAULT '0',
  `trending_type` tinyint NOT NULL DEFAULT '0',
  `best_seller` tinyint NOT NULL DEFAULT '0',
  `new_arrival` tinyint NOT NULL DEFAULT '0',
  `home_feature` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `sub_cat_id`, `sub_child_id`, `product_title`, `product_code`, `old_price`, `new_price`, `product_weight`, `short_desc`, `description`, `slug`, `product_image`, `product_image_back`, `meta_title`, `meta_description`, `meta_keywords`, `total_hits`, `total_sale`, `trending_type`, `best_seller`, `new_arrival`, `home_feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 6, 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', '22222', 799.00, 399.00, 500.00, 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', '<p>Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn<br></p>', 'baby-foldable-bath-tub-pad-adjustable-comfortable-non-slip-baby-bath-seat-infant-safety-shower-antiskid-cushion-plastic-net-mat-baby-shower-net-bathtub-sit-up-mesh-for-newborn', 'thumb-img-1703764863.webp', 'thumb-img-back-1705227554.webp', 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', '<p>Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn<br></p>', 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', 0, 1, 1, 1, 1, 1, 1, '2023-12-28 12:01:03', '2024-01-18 08:07:21'),
(2, 2, 2, 6, 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', '435345', 300.00, 125.00, 500.00, 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', 'baby-cap-towel-baby-hooded-towel-size-30-30', 'thumb-img-1703765410.webp', 'thumb-img-back-1705227501.webp', 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', 0, 6, 1, 1, 1, 1, 1, '2023-12-28 12:10:10', '2024-01-18 08:07:21'),
(3, 2, 2, 6, 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', '567567', 900.00, 500.00, 500.00, 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 14px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\"><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div></h2>', 'car-seat-back-tray-paper-towel-storage-box-car-hanging-tissue-box-cartoon-lovely-hanging-pumping-paper-towel-tray', 'thumb-img-1703765915.webp', 'thumb-img-back-1705227487.webp', 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 14px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\"><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div></h2>', 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', 0, 8, 1, 1, 1, 1, 1, '2023-12-28 12:18:35', '2024-01-18 08:16:31'),
(4, 2, 1, 0, '10 Pcs New-born Baby Kids Health Care Kit Set ( Pink-Bule )', '435345dg', 100.00, 30.00, 500.00, '10 Pcs New-born Baby Kids Health Care Kit Set ( Pink-Bule )', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', '10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-', 'thumb-img-1703925168.webp', 'thumb-img-back-1705227468.webp', '10 Pcs New-born Baby Kids Health Care Kit Set ( Pink-Bule )', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', '10 Pcs New-born Baby Kids Health Care Kit Set ( Pink-Bule )', 0, 8, 1, 1, 1, 0, 1, '2023-12-30 06:11:14', '2024-01-18 08:16:22'),
(5, 2, 1, 2, 'Doll', '22222', 44.00, 44.00, 44.00, 'Doll', '<p>Tori (Gold on black)<br></p>', 'doll', 'thumb-img-1704894275.webp', 'thumb-img-back-1705227456.webp', 'Tori (Gold on black)', '<p>Tori (Gold on black)<br></p>', 'Tori (Gold on black)', 0, 0, 0, 0, 0, 0, 1, '2024-01-04 08:19:24', '2024-01-14 10:17:36'),
(6, 2, 2, 6, 'Tori (Gold on black)', '22222', 150.00, 75.00, 44.00, 'Tori (Gold on black)', '<p>55</p>', 'tori-gold-on-black', 'thumb-img-1704357573.webp', 'thumb-img-back-1705227445.webp', 'Cables & Adapters', '<p>55</p>', 'Fabrics World USA, online fabric store, best online fabric store in the USA, spandex collection, Printed Spandex, Sequin Fabric, Glitter Stone, Designers Lace, stretch Velvet, Cotton Lycra, ITY, Metallic Spandex, Embroidery Lace, wholesale fabrics in usa,', 0, 0, 0, 0, 1, 0, 1, '2024-01-04 08:39:33', '2024-01-14 10:17:25'),
(7, 2, 1, 2, 'Test', '22222', 444.00, 4444.00, 444.00, 'Test', '<p>Test<br></p>', '-', 'thumb-img-1705226873.webp', 'thumb-img-back-1705227256.webp', 'Test', '<p>Test<br></p>', 'Test', 0, 0, 0, 0, 0, 0, 1, '2024-01-14 10:07:53', '2024-01-23 12:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `color_id` int NOT NULL,
  `size_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `color_id`, `size_id`, `image`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'pro_img-1703764863-0.webp', 20, '2023-12-28 12:01:03', '2023-12-28 12:01:03'),
(2, 1, 1, 2, 'pro_img-1703764863-1.webp', 435, '2023-12-28 12:01:03', '2023-12-30 09:25:38'),
(3, 1, 1, 3, 'pro_img-1703764863-2.webp', 20, '2023-12-28 12:01:03', '2023-12-28 12:01:03'),
(4, 1, 1, 5, 'pro_img-1703764863-3.webp', 19, '2023-12-28 12:01:03', '2024-01-18 08:07:21'),
(5, 2, 1, 1, 'pro_img-1703765410-0.webp', 34, '2023-12-28 12:10:10', '2024-01-18 08:07:21'),
(6, 2, 2, 1, 'pro_img-1703765410-1.webp', 30, '2023-12-28 12:10:10', '2023-12-30 09:22:24'),
(7, 2, 3, 1, 'pro_img-1703765410-2.webp', 40, '2023-12-28 12:10:10', '2023-12-28 12:10:10'),
(8, 3, 1, 1, 'pro_img-1703765915-0.webp', 21, '2023-12-28 12:18:35', '2024-01-18 08:16:31'),
(9, 3, 1, 2, 'pro_img-1703765915-1.webp', 30, '2023-12-28 12:18:35', '2023-12-28 12:18:35'),
(10, 3, 2, 1, 'pro_img-1703765915-2.webp', 30, '2023-12-28 12:18:35', '2023-12-28 12:18:35'),
(11, 3, 2, 2, 'pro_img-1703765915-3.webp', 19, '2023-12-28 12:18:35', '2024-01-18 08:07:21'),
(13, 4, 1, 2, 'pro_img-1703929763-0.webp', 0, '2023-12-30 06:11:14', '2024-01-16 12:05:55'),
(14, 4, 2, 1, 'pro_img-1703929763-1.webp', 0, '2023-12-30 06:11:14', '2023-12-30 09:49:23'),
(15, 4, 2, 2, 'pro_img-1703929763-2.webp', 200, '2023-12-30 06:11:14', '2023-12-30 09:49:23'),
(19, 5, 1, 1, 'pro_img-1704356364-0.webp', 44, '2024-01-04 08:19:24', '2024-01-04 08:19:24'),
(20, 5, 2, 1, 'pro_img-1704356364-1.webp', 44, '2024-01-04 08:19:24', '2024-01-04 08:19:24'),
(21, 6, 1, 1, 'pro_img-1704357573-0.webp', 5, '2024-01-04 08:39:33', '2024-01-04 08:39:33'),
(22, 6, 2, 1, 'pro_img-1705150011-1.webp', 5, '2024-01-04 08:39:33', '2024-01-13 12:46:51'),
(23, 7, 1, 1, 'pro_img-1705226873-0.webp', 44, '2024-01-14 10:07:53', '2024-01-14 10:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `product_title`, `short_desc`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 3, 'bn', 'গাড়ির সিট ব্যাক ট্রে পেপার টাওয়েল স্টোরেজ বক্স গাড়ি ঝুলন্ত টিস্যু বক্স কার্টুন সুদৃশ্য ঝুলন্ত পাম্পিং পেপার তোয়ালে ট্রে', 'গাড়ির সিট ব্যাক ট্রে পেপার টাওয়েল স্টোরেজ বক্স গাড়ি ঝুলন্ত টিস্যু বক্স কার্টুন সুদৃশ্য ঝুলন্ত পাম্পিং পেপার তোয়ালে ট্রে', '<p>গাড়ির সিট ব্যাক ট্রে পেপার টাওয়েল স্টোরেজ বক্স গাড়ি ঝুলন্ত টিস্যু বক্স কার্টুন সুদৃশ্য ঝুলন্ত পাম্পিং পেপার তোয়ালে ট্রে<br></p>', 'গাড়ির সিট ব্যাক ট্রে পেপার টাওয়েল স্টোরেজ বক্স গাড়ি ঝুলন্ত টিস্যু বক্স কার্টুন সুদৃশ্য ঝুলন্ত পাম্পিং পেপার তোয়ালে ট্রে', '<p>গাড়ির সিট ব্যাক ট্রে পেপার টাওয়েল স্টোরেজ বক্স গাড়ি ঝুলন্ত টিস্যু বক্স কার্টুন সুদৃশ্য ঝুলন্ত পাম্পিং পেপার তোয়ালে ট্রে<br></p>', 'গাড়ির সিট ব্যাক ট্রে পেপার টাওয়েল স্টোরেজ বক্স গাড়ি ঝুলন্ত টিস্যু বক্স কার্টুন সুদৃশ্য ঝুলন্ত পাম্পিং পেপার তোয়ালে ট্রে', '2024-01-23 12:07:07', '2024-01-23 12:07:07'),
(2, 7, 'bn', 'উচ্চ মানের শিশুর পা পরিধান', 'উচ্চ মানের শিশুর পা পরিধান', '<p>উচ্চ মানের শিশুর পা পরিধান<br></p>', 'উচ্চ মানের শিশুর পা পরিধান', '<p>উচ্চ মানের শিশুর পা পরিধান<br></p>', 'উচ্চ মানের শিশুর পা পরিধান', '2024-01-23 12:08:33', '2024-02-01 08:38:13'),
(3, 1, 'bn', 'বেবি ফোল্ডেবল বাথ টব প্যাড অ্যাডজাস্টেবল আরামদায়ক নন-স্লিপ বেবি বাথ সিট ইনফ্যান্ট সেফটি শাওয়ার অ্যান্টিস্কিড কুশন প্লাস্টিক নেট ম্যাট বেবি শাওয়ার নেট বাথটাব নবজাতকের জন্য মেশ আপ বসুন', 'বেবি ফোল্ডেবল বাথ টব প্যাড অ্যাডজাস্টেবল আরামদায়ক নন-স্লিপ বেবি বাথ সিট ইনফ্যান্ট সেফটি শাওয়ার অ্যান্টিস্কিড কুশন প্লাস্টিক নেট ম্যাট বেবি শাওয়ার নেট বাথটাব নবজাতকের জন্য মেশ আপ বসুন', '<p>বেবি ফোল্ডেবল বাথ টব প্যাড অ্যাডজাস্টেবল আরামদায়ক নন-স্লিপ বেবি বাথ সিট ইনফ্যান্ট সেফটি শাওয়ার অ্যান্টিস্কিড কুশন প্লাস্টিক নেট ম্যাট বেবি শাওয়ার নেট বাথটাব নবজাতকের জন্য মেশ আপ বসুন<br></p>', 'বেবি ফোল্ডেবল বাথ টব প্যাড অ্যাডজাস্টেবল আরামদায়ক নন-স্লিপ বেবি বাথ সিট ইনফ্যান্ট সেফটি শাওয়ার অ্যান্টিস্কিড কুশন প্লাস্টিক নেট ম্যাট বেবি শাওয়ার নেট বাথটাব নবজাতকের জন্য মেশ আপ বসুন', '<p>বেবি ফোল্ডেবল বাথ টব প্যাড অ্যাডজাস্টেবল আরামদায়ক নন-স্লিপ বেবি বাথ সিট ইনফ্যান্ট সেফটি শাওয়ার অ্যান্টিস্কিড কুশন প্লাস্টিক নেট ম্যাট বেবি শাওয়ার নেট বাথটাব নবজাতকের জন্য মেশ আপ বসুন<br></p>', 'বেবি ফোল্ডেবল বাথ টব প্যাড অ্যাডজাস্টেবল আরামদায়ক নন-স্লিপ বেবি বাথ সিট ইনফ্যান্ট সেফটি শাওয়ার অ্যান্টিস্কিড কুশন প্লাস্টিক নেট ম্যাট বেবি শাওয়ার নেট বাথটাব নবজাতকের জন্য মেশ আপ বসুন', '2024-01-23 12:08:41', '2024-02-01 08:43:51'),
(4, 1, 'en', 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', '<p>Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn<br></p>', 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', '<p>Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn<br></p>', 'Baby Foldable Bath Tub Pad Adjustable Comfortable Non-Slip Baby Bath Seat Infant Safety Shower Antiskid Cushion Plastic Net Mat Baby Shower Net Bathtub Sit Up Mesh for Newborn', '2024-01-23 12:09:02', '2024-01-23 12:09:02'),
(5, 3, 'en', 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 14px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\"><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div></h2>', 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 14px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\"><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; text-wrap: wrap; background-color: rgb(255, 255, 255);\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div></h2>', 'Car Seat Back Tray Paper Towel Storage Box Car Hanging Tissue Box Cartoon Lovely Hanging Pumping Paper Towel Tray', '2024-01-23 12:09:10', '2024-01-23 12:09:10'),
(6, 7, 'en', 'High quality baby foot wear', 'High quality baby foot wear', '<p>High quality baby foot wear<br></p>', 'High quality baby foot wear', '<p>High quality baby foot wear<br></p>', 'High quality baby foot wear', '2024-01-23 12:09:16', '2024-02-01 08:38:36'),
(7, 6, 'en', 'Tori (Gold on black)', 'Tori (Gold on black)', '<p>55</p>', 'Cables & Adapters', '<p>55</p>', 'Fabrics World USA, online fabric store, best online fabric store in the USA, spandex collection, Printed Spandex, Sequin Fabric, Glitter Stone, Designers Lace, stretch Velvet, Cotton Lycra, ITY, Metallic Spandex, Embroidery Lace, wholesale fabrics in usa,', '2024-01-23 12:09:24', '2024-01-23 12:09:24'),
(8, 5, 'en', 'Doll', 'Doll', '<p>Tori (Gold on black)<br></p>', 'Tori (Gold on black)', '<p>Tori (Gold on black)<br></p>', 'Tori (Gold on black)', '2024-01-23 12:09:31', '2024-01-23 12:09:31'),
(9, 4, 'en', 'New born Baby Kids Health Care Kit Set ( Pink-Bule )', 'New born Baby Kids Health Care Kit Set ( Pink-Bule )', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', 'New born Baby Kids Health Care Kit Set ( Pink-Bule )', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', 'New born Baby Kids Health Care Kit Set ( Pink-Bule )', '2024-01-23 12:09:39', '2024-02-01 08:41:52'),
(10, 2, 'en', 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', '<div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div><div class=\"shop-details-add mb-95\" style=\"margin-bottom: 95px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><a href=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-#\" style=\"color: rgb(22, 150, 231); transition: all 0.3s ease-out 0s; outline: none medium;\"><img src=\"http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/public/uploads/product/shop_details_add.jpg\" alt=\"\"></a></div>', 'Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"', '2024-01-23 12:09:52', '2024-01-23 12:09:52'),
(11, 6, 'bn', 'তোরি (কালোতে সোনা)', 'তোরি (কালোতে সোনা)', '<p>তোরি (কালোতে সোনা)<br></p>', 'তোরি (কালোতে সোনা)', '<p>অনুতোরি (কালোতে সোনা)<br></p>', 'তোরি (কালোতে সোনা)', '2024-01-23 12:12:28', '2024-02-01 08:36:31'),
(12, 5, 'bn', 'শিশুর জন্য পুতুল', 'শিশুর জন্য পুতুল', '<p>শিশুর জন্য পুতুল<br></p>', 'শিশুর জন্য পুতুল', '<p>শিশুর জন্য পুতুল<br></p>', 'শিশুর জন্য পুতুল', '2024-01-23 12:12:40', '2024-02-01 08:40:04'),
(13, 4, 'bn', 'নবজাতক শিশু কিডস হেলথ কেয়ার কিট সেট (পিঙ্ক-ব্লু)', 'নবজাতক শিশু কিডস হেলথ কেয়ার কিট সেট (পিঙ্ক-ব্লু)', '<p>নবজাতক শিশু কিডস হেলথ কেয়ার কিট সেট (পিঙ্ক-ব্লু)<br></p>', 'নবজাতক শিশু কিডস হেলথ কেয়ার কিট সেট (পিঙ্ক-ব্লু)', '<p>নবজাতক শিশু কিডস হেলথ কেয়ার কিট সেট (পিঙ্ক-ব্লু)<br></p>', 'নবজাতক শিশু কিডস হেলথ কেয়ার কিট সেট (পিঙ্ক-ব্লু)', '2024-01-23 12:12:55', '2024-02-01 08:42:13'),
(14, 2, 'bn', 'বেবি ক্যাপ তোয়ালে বেবি হুডেড তোয়ালের সাইজ 30 \"*30\"', 'বেবি ক্যাপ তোয়ালে বেবি হুডেড তোয়ালের সাইজ 30 \"*30\"', '<p>বেবি ক্যাপ তোয়ালে বেবি হুডেড তোয়ালের সাইজ 30 \"*30\"<br></p>', 'বেবি ক্যাপ তোয়ালে বেবি হুডেড তোয়ালের সাইজ 30 \"*30\"', '<p>বেবি ক্যাপ তোয়ালে বেবি হুডেড তোয়ালের সাইজ 30 \"*30\"<br></p>', 'বেবি ক্যাপ তোয়ালে বেবি হুডেড তোয়ালের সাইজ 30 \"*30\"', '2024-01-23 12:13:06', '2024-02-01 08:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `review` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `home_feature` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `product_id`, `review`, `rating`, `home_feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, 0, 1, '2024-01-08 10:34:17', '2024-01-14 13:27:44'),
(2, 1, 7, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 0, 1, '2024-01-08 10:52:55', '2024-01-08 12:21:00'),
(3, 1, 4, 4, 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining.', 4, 1, 1, '2024-01-08 11:03:15', '2024-01-08 12:56:17'),
(4, 1, 4, 2, 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining.', 2, 1, 1, '2024-01-08 11:04:04', '2024-01-09 05:27:31'),
(5, 1, 6, 4, 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining.', 1, 1, 1, '2024-01-08 11:05:03', '2024-01-09 05:27:34'),
(6, 1, 6, 2, 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining.', 5, 1, 1, '2024-01-08 11:05:10', '2024-01-09 05:27:37'),
(7, 1, 5, 4, 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining.', 5, 1, 1, '2024-01-08 11:05:32', '2024-01-09 05:27:40'),
(8, 1, 5, 2, 'Cramond Leopard & Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining.', 3, 1, 1, '2024-01-08 11:05:38', '2024-01-09 05:27:43'),
(9, 1, 8, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 0, 1, '2024-01-08 11:06:23', '2024-01-09 05:30:40'),
(10, 1, 8, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 0, 1, '2024-01-08 11:06:30', '2024-01-08 12:20:15'),
(11, 1, 8, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 0, 1, '2024-01-08 11:06:38', '2024-01-08 12:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` int NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_by`, `role`, `created_at`, `updated_at`) VALUES
(2, 1, 'Admin', '2024-01-31 06:31:11', '2024-01-31 06:31:11'),
(4, 1, 'Sales Man', '2024-01-31 08:00:27', '2024-01-31 08:00:27'),
(5, 1, 'Manager', '2024-01-31 11:34:05', '2024-01-31 11:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `serviceID` int NOT NULL COMMENT 'Quick_Guide=1,Customer_Servoce=2',
  `head` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `serviceID`, `head`, `title`, `description`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms', 'TERMS AND CONDITIONS', '<div class=\"terms-and-conditions-wrap\">\n                        <h5>Our Terms & Conditions</h5>\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\n                        generate lorem ipsum which looks reasonable.</p>\n                        <p>The generated lorem ipsum is therefore always free from repetition,\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\n                        \'Content here.</p>\n                    </div>\n                    <div class=\"terms-and-conditions-wrap\">\n                        <h5>Where does it come from?</h5>\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\n                        generate lorem ipsum which looks reasonable.</p>\n                        <p>The generated lorem ipsum is therefore always free from repetition,\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\n                        normal distribution of letters, as opposed to using\n                        \'Content here.</p>\n                    </div>\n                    <div class=\"terms-and-conditions-wrap\">\n                        <h5>Why do we use it?</h5>\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\n                        generate lorem ipsum which looks reasonable.</p>\n                        <ul>\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\n                        </ul>\n                    </div>', 'terms-and-conditions', '1', '2023-12-18 07:58:27', '2023-12-18 08:04:59'),
(3, 1, 'Returns', 'Returns', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', 'returns', '1', '2023-12-18 08:08:03', '2023-12-18 08:08:03'),
(4, 1, 'Privacy', 'Privacy', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', 'privacy', '1', '2023-12-18 08:09:13', '2023-12-18 08:09:13'),
(5, 2, 'Help Center', 'Help Center', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', 'help-center', '1', '2023-12-18 08:10:07', '2023-12-18 08:10:07'),
(6, 2, 'Accessibility', 'Accessibility', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', 'accessibility', '1', '2023-12-18 08:10:41', '2023-12-18 08:10:41'),
(7, 1, 'Security', 'Security', '<div class=\"terms-and-conditions-wrap\"><h5>Our Terms &amp; Conditions</h5><p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable.</p><p>The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.</p></div><div class=\"terms-and-conditions-wrap\"><h5>Where does it come from?</h5><p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable.</p><p>The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.</p></div><div class=\"terms-and-conditions-wrap\"><h5>Why do we use it?</h5><p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable.</p><ul><li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li><li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li><li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li><li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li></ul></div>', 'security', '1', '2023-12-18 08:35:48', '2023-12-18 10:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `service_id`, `locale`, `head`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 7, 'en', 'Security', 'Security', '<div class=\"terms-and-conditions-wrap\"><h5>Our Terms &amp; Conditions</h5><p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable.</p><p>The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.</p></div><div class=\"terms-and-conditions-wrap\"><h5>Where does it come from?</h5><p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable.</p><p>The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here.</p></div><div class=\"terms-and-conditions-wrap\"><h5>Why do we use it?</h5><p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable.</p><ul><li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li><li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li><li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li><li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li></ul></div>', '2024-01-24 08:14:26', '2024-01-24 08:14:26'),
(2, 6, 'en', 'Accessibility', 'Accessibility', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', '2024-01-24 08:14:33', '2024-01-24 08:14:33'),
(3, 1, 'en', 'Terms', 'TERMS AND CONDITIONS', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms & Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div>', '2024-01-24 08:14:40', '2024-01-24 08:14:40'),
(4, 3, 'en', 'Returns', 'Returns', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', '2024-01-24 08:14:46', '2024-01-24 08:14:46'),
(5, 4, 'en', 'Privacy', 'Privacy', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', '2024-01-24 08:14:50', '2024-01-24 08:14:50'),
(6, 5, 'en', 'Help Center', 'Help Center', '<div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Our Terms &amp; Conditions</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Where does it come from?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <p>The generated lorem ipsum is therefore always free from repetition,\r\n                        injected humour, or non-characteristic words etc. It is a long established fact that a reader will be distracted by the\r\n                        readable content of a page when looking at its layout. The point of using lorem ipsum is that it has a more-or-less\r\n                        normal distribution of letters, as opposed to using\r\n                        \'Content here.</p>\r\n                    </div>\r\n                    <div class=\"terms-and-conditions-wrap\">\r\n                        <h5>Why do we use it?</h5>\r\n                        <p>There are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form,\r\n                        by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of\r\n                        lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                        generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the\r\n                        internet. It uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to\r\n                        generate lorem ipsum which looks reasonable.</p>\r\n                        <ul>\r\n                            <li>Passages of lorem ipsum available, but the majority have suffered alteration in some form the majority have suffered alteration in some form by injected</li>\r\n                            <li>But the majority have suffered alteration in some form by injected of lorem ipsum available, but the majority have suffered alteration in some form</li>\r\n                            <li>You need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum\r\n                            generators on the internet tend to repeat predefined chunks as necessary majority have suffered alteration in some form by injected of lorem ipsum available.</li>\r\n                            <li>Duis repeat predefined chunks as necessary majority have suffered aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\r\n                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n                        </ul>\r\n                    </div><p>\r\n\r\n\r\n</p>', '2024-01-24 08:14:55', '2024-01-24 08:14:55'),
(7, 7, 'bn', 'নিরাপত্তা', 'নিরাপত্তা', '<p>আমাদের শর্তাবলী</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>এটা কোথা থেকে এসেছে?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>আমরা কেন এটা ব্যবহার করি?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>লরেম ইপসামের প্যাসেজ পাওয়া যায়, কিন্তু সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে ইনজেকশনের মাধ্যমে সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে</p><p>কিন্তু অধিকাংশই লরেম ইপসাম ইনজেকশনের মাধ্যমে কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে, কিন্তু সংখ্যাগরিষ্ঠ কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে।</p><p>আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লরেম ইপসাম জেনারেটরগুলি পূর্বনির্ধারিত অংশগুলির পুনরাবৃত্তি করে কারণ প্রয়োজনীয় সংখ্যাগরিষ্ঠ অংশগুলি উপলব্ধ লরেম ইপসাম ইনজেকশনের মাধ্যমে কিছু আকারে পরিবর্তনের শিকার হয়েছে।</p><p>প্রয়োজনীয় সংখ্যাগরিষ্ঠ হিসাবে পূর্বনির্ধারিত অংশগুলিকে পুনরাবৃত্তি করুন। ব্যতীত sint occaecat cupidatat non proident, Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-01-24 08:21:14', '2024-01-24 08:21:14'),
(8, 6, 'bn', 'অ্যাক্সেসযোগ্যতা', 'অ্যাক্সেসযোগ্যতা', '<p>আমাদের শর্তাবলী</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>এটা কোথা থেকে এসেছে?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>আমরা কেন এটা ব্যবহার করি?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>লরেম ইপসামের প্যাসেজ পাওয়া যায়, কিন্তু সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে ইনজেকশনের মাধ্যমে সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে</p><p>কিন্তু অধিকাংশই লরেম ইপসাম ইনজেকশনের মাধ্যমে কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে, কিন্তু সংখ্যাগরিষ্ঠ কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে।</p><p>আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লরেম ইপসাম জেনারেটরগুলি পূর্বনির্ধারিত অংশগুলির পুনরাবৃত্তি করে কারণ প্রয়োজনীয় সংখ্যাগরিষ্ঠ অংশগুলি উপলব্ধ লরেম ইপসাম ইনজেকশনের মাধ্যমে কিছু আকারে পরিবর্তনের শিকার হয়েছে।</p><p>প্রয়োজনীয় সংখ্যাগরিষ্ঠ হিসাবে পূর্বনির্ধারিত অংশগুলিকে পুনরাবৃত্তি করুন। ব্যতীত sint occaecat cupidatat non proident, Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-01-24 08:23:23', '2024-01-24 08:23:23'),
(9, 5, 'bn', 'সাহায্য কেন্দ্র', 'সাহায্য কেন্দ্র', '<p>আমাদের শর্তাবলী</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>এটা কোথা থেকে এসেছে?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>আমরা কেন এটা ব্যবহার করি?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>লরেম ইপসামের প্যাসেজ পাওয়া যায়, কিন্তু সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে ইনজেকশনের মাধ্যমে সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে</p><p>কিন্তু অধিকাংশই লরেম ইপসাম ইনজেকশনের মাধ্যমে কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে, কিন্তু সংখ্যাগরিষ্ঠ কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে।</p><p>আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লরেম ইপসাম জেনারেটরগুলি পূর্বনির্ধারিত অংশগুলির পুনরাবৃত্তি করে কারণ প্রয়োজনীয় সংখ্যাগরিষ্ঠ অংশগুলি উপলব্ধ লরেম ইপসাম ইনজেকশনের মাধ্যমে কিছু আকারে পরিবর্তনের শিকার হয়েছে।</p><p>প্রয়োজনীয় সংখ্যাগরিষ্ঠ হিসাবে পূর্বনির্ধারিত অংশগুলিকে পুনরাবৃত্তি করুন। ব্যতীত sint occaecat cupidatat non proident, Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-01-24 08:24:55', '2024-01-24 08:24:55'),
(10, 4, 'bn', 'গোপনীয়তা', 'গোপনীয়তা', '<p>আমাদের শর্তাবলী</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>এটা কোথা থেকে এসেছে?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>আমরা কেন এটা ব্যবহার করি?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>লরেম ইপসামের প্যাসেজ পাওয়া যায়, কিন্তু সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে ইনজেকশনের মাধ্যমে সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে</p><p>কিন্তু অধিকাংশই লরেম ইপসাম ইনজেকশনের মাধ্যমে কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে, কিন্তু সংখ্যাগরিষ্ঠ কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে।</p><p>আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লরেম ইপসাম জেনারেটরগুলি পূর্বনির্ধারিত অংশগুলির পুনরাবৃত্তি করে কারণ প্রয়োজনীয় সংখ্যাগরিষ্ঠ অংশগুলি উপলব্ধ লরেম ইপসাম ইনজেকশনের মাধ্যমে কিছু আকারে পরিবর্তনের শিকার হয়েছে।</p><p>প্রয়োজনীয় সংখ্যাগরিষ্ঠ হিসাবে পূর্বনির্ধারিত অংশগুলিকে পুনরাবৃত্তি করুন। ব্যতীত sint occaecat cupidatat non proident, Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-01-24 08:25:43', '2024-01-24 08:25:43'),
(11, 3, 'bn', 'রিটার্নস', 'রিটার্নস', '<p>আমাদের শর্তাবলী</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>এটা কোথা থেকে এসেছে?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>আমরা কেন এটা ব্যবহার করি?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>লরেম ইপসামের প্যাসেজ পাওয়া যায়, কিন্তু সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে ইনজেকশনের মাধ্যমে সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে</p><p>কিন্তু অধিকাংশই লরেম ইপসাম ইনজেকশনের মাধ্যমে কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে, কিন্তু সংখ্যাগরিষ্ঠ কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে।</p><p>আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লরেম ইপসাম জেনারেটরগুলি পূর্বনির্ধারিত অংশগুলির পুনরাবৃত্তি করে কারণ প্রয়োজনীয় সংখ্যাগরিষ্ঠ অংশগুলি উপলব্ধ লরেম ইপসাম ইনজেকশনের মাধ্যমে কিছু আকারে পরিবর্তনের শিকার হয়েছে।</p><p>প্রয়োজনীয় সংখ্যাগরিষ্ঠ হিসাবে পূর্বনির্ধারিত অংশগুলিকে পুনরাবৃত্তি করুন। ব্যতীত sint occaecat cupidatat non proident, Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-01-24 08:27:13', '2024-01-24 08:27:13');
INSERT INTO `service_translations` (`id`, `service_id`, `locale`, `head`, `title`, `description`, `created_at`, `updated_at`) VALUES
(12, 1, 'bn', 'শর্তাবলী', 'ভেনাম', '<p>আমাদের শর্তাবলী</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>এটা কোথা থেকে এসেছে?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>তাই উত্পন্ন লোরেম ইপসাম সবসময় পুনরাবৃত্তি, ইনজেক্টেড হাস্যরস, বা অ-চরিত্রহীন শব্দ ইত্যাদি থেকে মুক্ত থাকে। এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার বিন্যাসটি দেখার সময় পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে। lorem ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরের কম-বেশি স্বাভাবিক বিতরণ রয়েছে।</p><p><br></p><p>আমরা কেন এটা ব্যবহার করি?</p><p>লরেম ইপসামের প্যাসেজের অনেক বৈচিত্র উপলব্ধ রয়েছে, তবে বেশিরভাগই কিছু আকারে পরিবর্তনের শিকার হয়েছে, ইনজেকশন করা হাস্যরস, বা এলোমেলো শব্দ যা সামান্য বিশ্বাসযোগ্য বলে মনে হচ্ছে না। আপনি যদি lorem ipsum-এর একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন, তাহলে আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লোরেম ইপসাম জেনারেটরগুলি প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত অংশগুলি পুনরাবৃত্তি করার প্রবণতা রাখে, এটিকে ইন্টারনেটে প্রথম সত্য জেনারেটর করে তোলে। এটি 200 টিরও বেশি ল্যাটিন শব্দের অভিধান ব্যবহার করে, মুষ্টিমেয় মডেল বাক্য গঠনের সাথে মিলিত, লরেম ইপসাম তৈরি করতে যা যুক্তিসঙ্গত দেখায়।</p><p><br></p><p>লরেম ইপসামের প্যাসেজ পাওয়া যায়, কিন্তু সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে ইনজেকশনের মাধ্যমে সংখ্যাগরিষ্ঠরা কোন না কোন আকারে পরিবর্তনের শিকার হয়েছে</p><p>কিন্তু অধিকাংশই লরেম ইপসাম ইনজেকশনের মাধ্যমে কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে, কিন্তু সংখ্যাগরিষ্ঠ কোনো না কোনো আকারে পরিবর্তনের শিকার হয়েছে।</p><p>আপনাকে নিশ্চিত হতে হবে যে পাঠ্যের মাঝখানে বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটের সমস্ত লরেম ইপসাম জেনারেটরগুলি পূর্বনির্ধারিত অংশগুলির পুনরাবৃত্তি করে কারণ প্রয়োজনীয় সংখ্যাগরিষ্ঠ অংশগুলি উপলব্ধ লরেম ইপসাম ইনজেকশনের মাধ্যমে কিছু আকারে পরিবর্তনের শিকার হয়েছে।</p><p>প্রয়োজনীয় সংখ্যাগরিষ্ঠ হিসাবে পূর্বনির্ধারিত অংশগুলিকে পুনরাবৃত্তি করুন। ব্যতীত sint occaecat cupidatat non proident, Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-01-24 08:27:45', '2024-01-24 09:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Small', 'S', '1', '2023-12-26 12:23:36', '2023-12-26 12:23:36'),
(2, 'Large', 'L', '1', '2023-12-26 12:23:48', '2023-12-26 12:23:48'),
(3, 'Medium', 'M', '1', '2023-12-26 12:24:09', '2023-12-26 12:30:55'),
(4, 'Extra Large', 'XL', '1', '2023-12-26 12:24:27', '2023-12-26 12:24:27'),
(5, 'XXL', 'XXL', '1', '2023-12-26 12:25:51', '2023-12-26 13:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `productLink` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bgImg` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proImg` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `productName`, `discount`, `productLink`, `bgImg`, `proImg`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TOP DEAL !', 'HEADPHONE', 50, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/10-pcs-new-born-baby-kids-health-care-kit-set-pink-bule-', 'bgimg-1702386523.jpg', 'proimg-1702386523.png', 1, '2023-12-12 13:08:43', '2024-01-01 13:11:30'),
(2, 'top deal !', 'handbag', 50, 'http://localhost/LARAVEL/PROJECTS-L/VENOM/VENOM/product-details/car-seat-back-tray-paper-towel-storage-box-car-hanging-tissue-box-cartoon-lovely-hanging-pumping-paper-towel-tray', 'bgimg-1702445522.jpg', 'proimg-1702445499.png', 1, '2023-12-13 05:10:39', '2024-01-01 13:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `admin_id`, `cat_id`, `title`, `meta_title`, `meta_description`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', '--', '1', '2023-12-14 08:40:11', '2024-01-23 11:24:14'),
(2, 1, 2, 'Electronics-', 'Electronics-', 'Electronic Cigarettes', 'electronics-', '1', '2023-12-14 08:56:21', '2024-01-13 12:39:00'),
(3, 1, 2, 'Smart Electronics', 'Smart Electronics', 'Smart Electronics', 'smart-electronics', '1', '2023-12-14 08:56:35', '2023-12-14 08:56:35'),
(4, 1, 2, 'Portable Audio & Video', 'Portable Audio & Video', 'Portable Audio & Video', 'winter-cloths', '1', '2023-12-14 08:56:53', '2024-02-01 08:24:14'),
(5, 1, 2, 'Car Accessories', 'Car Accessories', 'Car Accessories', 'car-accessories', '1', '2023-12-14 08:57:19', '2023-12-17 08:24:47'),
(6, 1, 2, 'Audio & Video', 'Audio & Video', 'Audio & Video', 'audio-video', '1', '2023-12-14 11:02:20', '2023-12-14 11:02:20'),
(7, 1, 6, 'Audio & Video', 'Audio & Video', 'Audio & Video', 'audio-video', '1', '2023-12-14 11:03:21', '2023-12-14 11:03:21'),
(8, 1, 6, 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', 'accessories-parts', '1', '2023-12-14 11:03:34', '2023-12-14 11:03:34'),
(9, 1, 6, 'Portable Audio & Video', 'Portable Audio & Video', 'Portable Audio & Video', 'portable-audio-video', '1', '2023-12-14 11:03:51', '2023-12-14 11:03:51'),
(10, 1, 6, 'Smart Electronics', 'Smart Electronics', 'Smart Electronics', 'smart-electronics', '1', '2023-12-14 11:04:19', '2023-12-14 11:04:19'),
(11, 1, 7, 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', 'accessories-parts', '1', '2023-12-14 11:05:18', '2023-12-14 11:05:18'),
(12, 1, 7, 'Electronic Cigarettes1', 'Electronic Cigarettes', 'Electronic Cigarettes', 'electronic-cigarettes1', '1', '2023-12-14 11:05:47', '2024-01-13 12:38:27'),
(13, 1, 4, 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', 'accessories-parts', '1', '2023-12-14 11:06:32', '2023-12-14 11:06:32'),
(14, 1, 9, 'Smart Electronics', 'Smart Electronics', 'Smart Electronics', 'smart-electronics', '1', '2023-12-14 11:08:32', '2023-12-14 11:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_translations`
--

CREATE TABLE `sub_category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category_translations`
--

INSERT INTO `sub_category_translations` (`id`, `sub_category_id`, `locale`, `title`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 14, 'en', 'Smart Electronics', 'Smart Electronics', 'Smart Electronics', '2024-01-23 08:48:15', '2024-01-23 08:48:15'),
(4, 13, 'en', 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', '2024-01-23 08:48:21', '2024-01-23 08:48:21'),
(5, 12, 'en', 'Electronic Cigarettes1', 'Electronic Cigarettes', 'Electronic Cigarettes', '2024-01-23 08:48:32', '2024-01-23 08:48:32'),
(6, 11, 'en', 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', '2024-01-23 08:48:37', '2024-01-23 08:48:37'),
(7, 10, 'en', 'Smart Electronics', 'Smart Electronics', 'Smart Electronics', '2024-01-23 08:48:44', '2024-01-23 08:48:44'),
(8, 9, 'en', 'Portable Audio & Video', 'Portable Audio & Video', 'Portable Audio & Video', '2024-01-23 08:48:49', '2024-01-23 08:48:49'),
(9, 6, 'en', 'Audio & Video', 'Audio & Video', 'Audio & Video', '2024-01-23 08:48:54', '2024-01-23 08:48:54'),
(10, 7, 'en', 'Audio & Video', 'Audio & Video', 'Audio & Video', '2024-01-23 08:48:59', '2024-01-23 08:48:59'),
(11, 8, 'en', 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', '2024-01-23 08:49:05', '2024-01-23 08:49:05'),
(12, 14, 'bn', 'স্মার্ট ইলেকট্রনিক্স', 'স্মার্ট ইলেকট্রনিক্স', 'স্মার্ট ইলেকট্রনিক্স', '2024-01-23 08:49:25', '2024-01-23 11:20:55'),
(13, 13, 'bn', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', '2024-01-23 08:49:52', '2024-01-23 08:49:52'),
(14, 12, 'bn', 'ইলেকট্রনিক সিগারেট', 'ইলেকট্রনিক সিগারেট', 'ইলেকট্রনিক সিগারেট', '2024-01-23 08:50:08', '2024-01-23 08:50:08'),
(15, 11, 'bn', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', '2024-01-23 08:50:23', '2024-01-23 08:50:23'),
(16, 10, 'bn', 'স্মার্ট ইলেকট্রনিক্স', 'স্মার্ট ইলেকট্রনিক্স', 'স্মার্ট ইলেকট্রনিক্স', '2024-01-23 08:50:38', '2024-01-23 08:50:38'),
(17, 9, 'bn', 'পোর্টেবল অডিও এবং ভিডিও', 'পোর্টেবল অডিও এবং ভিডিও', 'পোর্টেবল অডিও এবং ভিডিও', '2024-01-23 08:50:53', '2024-01-23 08:50:53'),
(18, 8, 'bn', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', 'আনুষাঙ্গিক এবং যন্ত্রাংশ', '2024-01-23 08:51:16', '2024-01-23 08:51:16'),
(19, 7, 'bn', 'অডিও ভিডিও', 'অডিও ভিডিও', 'অডিও ভিডিও', '2024-01-23 08:51:42', '2024-01-23 08:51:42'),
(20, 6, 'bn', 'অডিও ভিডিও', 'অডিও ভিডিও', 'অডিও ভিডিও', '2024-01-23 08:51:58', '2024-01-23 08:51:58'),
(21, 5, 'en', 'Car Accessories', 'Car Accessories', 'Car Accessories', '2024-01-23 08:53:14', '2024-01-23 08:53:14'),
(22, 4, 'en', 'Winter Cloths', 'Winter Cloths', 'Winter Cloths', '2024-01-23 08:53:21', '2024-02-01 08:24:14'),
(23, 3, 'en', 'Smart Electronics', 'Smart Electronics', 'Smart Electronics', '2024-01-23 08:53:27', '2024-01-23 08:53:27'),
(24, 2, 'en', 'Electronics-', 'Electronics-', 'Electronic Cigarettes', '2024-01-23 08:53:33', '2024-01-23 08:53:33'),
(25, 1, 'en', 'Accessories & Parts', 'Accessories & Parts', 'Accessories & Parts', '2024-01-23 08:53:39', '2024-01-23 08:53:39'),
(26, 5, 'bn', 'গাড়ী মালপত্র', 'গাড়ী মালপত্র', 'গাড়ী মালপত্র', '2024-01-23 08:54:18', '2024-01-23 08:54:18'),
(27, 4, 'bn', 'শীতকালে জামাকাপড়', 'শীতকালে জামাকাপড়', 'শীতকালে জামাকাপড়', '2024-01-23 08:54:27', '2024-02-01 08:24:47'),
(28, 3, 'bn', 'স্মার্ট ইলেকট্রনিক্স', 'স্মার্ট ইলেকট্রনিক্স', 'স্মার্ট ইলেকট্রনিক্স', '2024-01-23 08:54:49', '2024-01-23 08:54:49'),
(29, 2, 'bn', 'স্মার্ট ইলেকট্রনিক্স--', 'স্মার্ট ইলেকট্রনিক্স--', 'স্মার্ট ইলেকট্রনিক্স--', '2024-01-23 08:55:22', '2024-01-23 08:55:22'),
(30, 1, 'bn', 'স্মার্ট ইলেকট্রনিক্স--', 'স্মার্ট ইলেকট্রনিক্স--', 'স্মার্ট ইলেকট্রনিক্স--', '2024-01-23 08:55:33', '2024-01-23 08:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `sub_children`
--

CREATE TABLE `sub_children` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` int NOT NULL,
  `sub_cat_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_children`
--

INSERT INTO `sub_children` (`id`, `admin_id`, `sub_cat_id`, `title`, `meta_title`, `meta_description`, `answer_question`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Chargers', 'Chargers', 'Chargers', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'chargers', '1', '2023-12-17 06:55:25', '2023-12-17 08:15:49'),
(3, 1, 1, 'Batteries', 'Batteries', 'Batteries', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'batteries', '1', '2023-12-17 08:11:33', '2023-12-17 08:15:13'),
(4, 1, 1, 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters', '1', '2023-12-17 08:12:19', '2023-12-17 08:14:45'),
(5, 1, 1, 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'bags-cases', '1', '2023-12-17 08:16:30', '2023-12-17 08:16:30'),
(6, 1, 2, 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters', '1', '2023-12-17 08:17:41', '2023-12-17 08:17:41'),
(7, 1, 4, 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'bags-cases', '1', '2023-12-17 08:18:10', '2023-12-17 08:18:10'),
(9, 1, 4, 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'jacket', '1', '2023-12-17 08:18:55', '2024-02-01 08:26:14'),
(10, 1, 4, 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters', '1', '2023-12-17 08:19:29', '2023-12-17 08:19:29'),
(11, 1, 2, 'Electronic Cigarettes', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'electronic-cigarettes', '1', '2023-12-17 08:20:28', '2023-12-17 08:20:28'),
(12, 1, 2, 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters', '1', '2023-12-17 08:20:52', '2023-12-17 08:20:52'),
(13, 1, 3, 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters', '1', '2023-12-17 08:21:47', '2023-12-17 08:21:47'),
(14, 1, 3, 'Chargers', 'Chargers', 'Chargers', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'chargers', '1', '2023-12-17 08:22:05', '2023-12-17 08:22:05'),
(15, 1, 3, 'Cables & Adapters', 'Cables & Adapters', '<br><div><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div></div>', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters', '1', '2023-12-17 08:22:19', '2024-01-13 12:31:57'),
(16, 1, 5, 'Chargers', 'Chargers', 'Chargers', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'chargers', '1', '2023-12-17 08:50:38', '2023-12-17 08:51:38'),
(17, 1, 5, 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'bags-cases', '1', '2023-12-17 08:50:54', '2023-12-17 08:50:54'),
(18, 1, 5, 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'foot-wear', '1', '2023-12-17 08:51:24', '2024-02-01 08:17:29'),
(19, 1, 5, 'Electronic Cigarettes3', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p><span style=\"background-color: rgba(0, 0, 0, 0.05);\">Electronic Cigarettes</span><br></p>', 'electronic-cigarettes3', '1', '2023-12-17 08:52:08', '2024-01-13 12:36:44'),
(20, 1, 4, 'Electronic Cigarettes2', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'electronic-cigarettes2', '1', '2023-12-17 08:53:04', '2024-01-13 12:36:17'),
(21, 1, 6, 'Cables & Adapters1', 'Cables & Adapters', 'Cables & Adapters', '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', 'cables-adapters1', '1', '2023-12-17 08:53:35', '2024-01-13 12:37:37'),
(22, 1, 6, 'Electronic Cigarettes1', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul>', 'electronic-cigarettes1', '1', '2023-12-17 08:53:56', '2024-01-13 12:36:09');
INSERT INTO `sub_children` (`id`, `admin_id`, `sub_cat_id`, `title`, `meta_title`, `meta_description`, `answer_question`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(23, 1, 6, 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<h1 style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"><br></h1><div><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div></div>', 'bags-cases1', '1', '2023-12-17 08:54:23', '2024-01-23 10:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `sub_child_translations`
--

CREATE TABLE `sub_child_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `sub_child_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_child_translations`
--

INSERT INTO `sub_child_translations` (`id`, `sub_child_id`, `locale`, `title`, `meta_title`, `meta_description`, `answer_question`, `created_at`, `updated_at`) VALUES
(1, 23, 'bn', 'ব্যাগ এবং কেস', 'ব্যাগ এবং কেস', '<p>ব্যাগ এবং কেস<br></p>', '<p>ব্যাগ এবং কেস<br></p>', '2024-01-23 09:56:47', '2024-01-23 09:56:47'),
(2, 23, 'en', 'Bags & Cases1', 'Bags & Cases1', 'Bags & Cases', '<h1 style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"><br></h1><div><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div></div>', '2024-01-23 09:58:08', '2024-01-23 10:31:12'),
(3, 22, 'en', 'Electronic Cigarettes1', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul>', '2024-01-23 09:58:15', '2024-01-23 09:58:15'),
(4, 21, 'en', 'Cables & Adapters1', 'Cables & Adapters', 'Cables & Adapters', '<p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:58:20', '2024-01-23 09:58:20'),
(5, 20, 'en', 'Electronic Cigarettes2', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:58:29', '2024-01-23 09:58:29'),
(6, 19, 'en', 'Electronic Cigarettes3', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p><span style=\"background-color: rgba(0, 0, 0, 0.05);\">Electronic Cigarettes</span><br></p>', '2024-01-23 09:58:35', '2024-01-23 09:58:35'),
(7, 14, 'en', 'Chargers', 'Chargers', 'Chargers', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:58:40', '2024-01-23 09:58:40'),
(8, 15, 'en', 'Cables & Adapters', 'Cables & Adapters', '<br><div><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div></div>', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:58:45', '2024-01-23 09:58:45'),
(9, 16, 'en', 'Chargers', 'Chargers', 'Chargers', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:58:50', '2024-01-23 09:58:50'),
(10, 17, 'en', 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:58:55', '2024-01-23 09:58:55'),
(11, 18, 'en', 'Foot Wear', 'Foot Wear', 'Foot Wear', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:59:01', '2024-02-01 08:17:29'),
(12, 3, 'en', 'Batteries', 'Batteries', 'Batteries', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:59:18', '2024-01-23 09:59:18'),
(13, 4, 'en', 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:59:25', '2024-01-23 09:59:25'),
(14, 5, 'en', 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:59:35', '2024-01-23 09:59:35'),
(15, 6, 'en', 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:59:43', '2024-01-23 09:59:43'),
(16, 7, 'en', 'Bags & Cases', 'Bags & Cases', 'Bags & Cases', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 09:59:50', '2024-01-23 09:59:50'),
(17, 9, 'en', 'Jacket', 'Jacket', 'Jacket', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 10:00:02', '2024-02-01 08:26:14'),
(18, 10, 'en', 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 10:00:10', '2024-01-23 10:00:10'),
(19, 11, 'en', 'Electronic Cigarettes', 'Electronic Cigarettes', 'Electronic Cigarettes', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 10:00:35', '2024-01-23 10:00:35'),
(20, 12, 'en', 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 10:00:45', '2024-01-23 10:00:45'),
(21, 13, 'en', 'Cables & Adapters', 'Cables & Adapters', 'Cables & Adapters', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 10:00:54', '2024-01-23 10:00:54');
INSERT INTO `sub_child_translations` (`id`, `sub_child_id`, `locale`, `title`, `meta_title`, `meta_description`, `answer_question`, `created_at`, `updated_at`) VALUES
(22, 2, 'en', 'Chargers', 'Chargers', 'Chargers', '<p><br></p><h5 class=\"small-title\" style=\"margin-bottom: 15px; font-size: 16px; font-family: Rubik, sans-serif; color: rgb(37, 37, 37);\">Baby Cap Towel Baby Hooded Towel Size 30 \"* 30\"</h5><p style=\"margin-bottom: 20px; font-size: 14px; line-height: 2; color: rgb(125, 125, 125); font-family: Rubik, sans-serif;\"></p><div class=\"product-desc-wrap mb-100\" style=\"margin-bottom: 100px; color: rgb(125, 125, 125); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"tab-content\" id=\"myTabContent\"><div class=\"tab-pane fade active show\" id=\"val\" role=\"tabpanel\" aria-labelledby=\"val-tab\" style=\"animation: 0.3s ease-out 0s 1 normal none running slide-down;\"><div class=\"product-desc-content\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-xl-9 col-md-8\" style=\"width: 922.5px; padding-right: 15px; padding-left: 15px;\"><p style=\"margin-bottom: 20px; line-height: 2;\">Cramond Leopard &amp; Pythong Print Anorak Jacket In Beige but also the leap into electronic typesetting, remaining Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"product-desc-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">65% poly, 35% rayon</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hand wash cold</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Partially lined</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Hidden front button closure with keyhole accents</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 10px;\">Button cuff sleeves</li><li style=\"list-style: none; display: block; padding-left: 18px; position: relative; margin-bottom: 0px;\">Made in USA</li></ul></div></div></div></div></div></div>', '2024-01-23 10:01:03', '2024-01-23 10:01:03'),
(23, 22, 'bn', 'ইলেকট্রনিক সিগারেট', 'ইলেকট্রনিক সিগারেট', '<p>ইলেকট্রনিক সিগারেট<br></p>', '<p>ইলেকট্রনিক সিগারেট<br></p>', '2024-01-23 10:05:55', '2024-02-01 08:14:26'),
(24, 21, 'bn', 'কেবল এবং অ্যাডাপ্টার', 'কেবল এবং অ্যাডাপ্টার', '<p>কেবল এবং অ্যাডাপ্টার&nbsp;<br></p>', '<p>কেবল এবং অ্যাডাপ্টার&nbsp;<br></p>', '2024-01-23 10:08:19', '2024-02-01 08:14:53'),
(25, 20, 'bn', 'ইলেকট্রনিক সিগারেট', 'ইলেকট্রনিক সিগারেট', '<p>ইলেকট্রনিক সিগারেট<br></p>', NULL, '2024-01-23 10:08:29', '2024-02-01 08:16:14'),
(26, 19, 'bn', 'ফুট পরিধান', 'ফুট পরিধান', '<p>ফুট পরিধান<br></p>', '<p>ফুট পরিধান<br></p>', '2024-01-23 10:08:36', '2024-02-01 08:17:45'),
(27, 18, 'bn', 'ব্যাগ এবং কেস', 'ব্যাগ এবং কেস', '<p>ব্যাগ এবং কেস<br></p>', NULL, '2024-01-23 10:08:44', '2024-02-01 08:20:24'),
(28, 17, 'bn', 'চার্জার', 'চার্জার', '<p>চার্জার<br></p>', NULL, '2024-01-23 10:08:51', '2024-02-01 08:20:54'),
(29, 16, 'bn', 'তারের এবং অ্যাডাপ্টার', 'তারের এবং অ্যাডাপ্টার', '<p>তারের এবং অ্যাডাপ্টার<br></p>', '<p>তারের এবং অ্যাডাপ্টার<br></p>', '2024-01-23 10:09:38', '2024-02-01 08:21:30'),
(30, 15, 'bn', 'তার এবং অ্যাডাপ্টার', 'তারের এবং অ্যাডাপ্টার', '<p>তারের এবং অ্যাডাপ্টার<br></p>', NULL, '2024-01-23 10:10:05', '2024-02-01 08:28:09'),
(31, 14, 'bn', 'ক্যাবল', 'ক্যাবল', '<p>ক্যাবল<br></p>', '<p>ক্যাবল<br></p>', '2024-01-23 10:10:29', '2024-02-01 08:22:00'),
(32, 13, 'bn', 'তার এবং অ্যাডাপ্টার', 'তার এবং অ্যাডাপ্টার', '<p>তার এবং অ্যাডাপ্টার<br></p>', '<p>তার এবং অ্যাডাপ্টার<br></p>', '2024-01-23 10:10:36', '2024-02-01 08:29:52'),
(33, 12, 'bn', 'তার এবং অ্যাডাপ্টার', 'তার এবং অ্যাডাপ্টার', '<p>তার এবং অ্যাডাপ্টার<br></p>', NULL, '2024-01-23 10:10:40', '2024-02-01 08:30:09'),
(34, 11, 'bn', 'বৈদ্যুতিন সিগারেট', 'বৈদ্যুতিন সিগারেট', '<p>বৈদ্যুতিন সিগারেট<br></p>', NULL, '2024-01-23 10:10:44', '2024-02-01 08:30:38'),
(35, 10, 'bn', 'কেবল এবং অ্যাডাপ্টার', 'কেবল এবং অ্যাডাপ্টার', '<p>কেবল এবং অ্যাডাপ্টার<br></p>', NULL, '2024-01-23 10:10:48', '2024-02-01 08:31:09'),
(36, 9, 'bn', 'জ্যাকেট', 'জ্যাকেট', '<p>জ্যাকেট<br></p>', '<p><br></p>', '2024-01-23 10:10:53', '2024-02-01 08:26:33'),
(37, 7, 'bn', 'ব্যাগ এবং কেস', 'ব্যাগ এবং কেস', NULL, NULL, '2024-01-23 10:11:02', '2024-02-01 08:32:52'),
(38, 6, 'bn', 'তারের এবং অ্যাডাপ্টার', 'তারের এবং অ্যাডাপ্টার', NULL, NULL, '2024-01-23 10:11:05', '2024-02-01 08:33:08'),
(39, 5, 'bn', 'ব্যাগ এবং কেস', 'ব্যাগ এবং কেস', NULL, NULL, '2024-01-23 10:11:09', '2024-02-01 08:33:26'),
(43, 2, 'bn', 'চার্জারগুলি', NULL, NULL, NULL, '2024-01-23 10:13:54', '2024-02-01 08:34:24'),
(44, 4, 'bn', 'তারের এবং অ্যাডাপ্টার', NULL, NULL, NULL, '2024-01-23 10:13:57', '2024-02-01 08:33:39'),
(45, 3, 'bn', 'ব্যাটারী', 'ব্যাটারী', NULL, NULL, '2024-01-23 10:14:02', '2024-02-01 08:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `google_id`, `facebook_id`, `phone`, `default_address`, `image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Malek Azad', 'admin@gmail.com', '$2y$10$nfBiU5lwi0SMVZQryw7YqeXOjO1D5fC.wrw8nyw9NSDS6T/MwxhI6', NULL, NULL, '01839317038', 'Companygonj, Noakhali.', '', NULL, NULL, NULL, '2024-01-24 09:45:33'),
(3, 'Nowab Shorif', 'nsanoman@gmail.com', '$2y$10$eadL0JnVW4Y/VSnnHqbA1.7KwQuarPcHvDXAYFM7eYVDR7N0z0MCy', NULL, NULL, '01839317038', 'Companygonj, Noakhali.', '', NULL, 'nkQUqfBv58y9RV4P1C4R3b1ZmgLb9cydgN11XpPibDSsiu17Z23oLRX9QgeV', '2024-01-02 12:59:51', '2024-01-29 10:15:29'),
(4, 'Nowab Shorif', 'noman@gmail.com', '$2y$10$oY8fbyLIFiPPAtT2EjNA5em9FZas8N.xgYG.veh0T98FRW.8OD.hG', NULL, NULL, '01839317038', 'Companygonj, Noakhali.', NULL, NULL, NULL, '2024-01-14 06:30:18', '2024-01-14 06:30:18'),
(5, 'Nowab Shorif', 'aman@gmail.com', '$2y$10$XYof07GT8QRRv0qaqPiZpu78Wsv5GP2AJR5Fs7WtzXHAgD49T8dI6', NULL, NULL, '234567890', 'Companygonj, Noakhali.', NULL, NULL, NULL, '2024-01-14 06:33:19', '2024-01-14 06:33:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address_books`
--
ALTER TABLE `address_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `basic_infos`
--
ALTER TABLE `basic_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info_translations`
--
ALTER TABLE `basic_info_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basic_info_translations_basic_info_id_locale_unique` (`basic_info_id`,`locale`),
  ADD KEY `basic_info_translations_locale_index` (`locale`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_category_translations_blog_category_id_locale_unique` (`blog_category_id`,`locale`),
  ADD KEY `blog_category_translations_locale_index` (`locale`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_translations_blog_id_locale_unique` (`blog_id`,`locale`),
  ADD KEY `blog_translations_locale_index` (`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_cat_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_symbols`
--
ALTER TABLE `currency_symbols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_features`
--
ALTER TABLE `home_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `product_translations_locale_index` (`locale`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_translations_service_id_locale_unique` (`service_id`,`locale`),
  ADD KEY `service_translations_locale_index` (`locale`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_translations`
--
ALTER TABLE `sub_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_category_translations_sub_category_id_locale_unique` (`sub_category_id`,`locale`),
  ADD KEY `sub_category_translations_locale_index` (`locale`);

--
-- Indexes for table `sub_children`
--
ALTER TABLE `sub_children`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_child_translations`
--
ALTER TABLE `sub_child_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_child_translations_sub_child_id_locale_unique` (`sub_child_id`,`locale`),
  ADD KEY `sub_child_translations_locale_index` (`locale`);

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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `address_books`
--
ALTER TABLE `address_books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `basic_infos`
--
ALTER TABLE `basic_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_info_translations`
--
ALTER TABLE `basic_info_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_features`
--
ALTER TABLE `home_features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_category_translations`
--
ALTER TABLE `sub_category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sub_children`
--
ALTER TABLE `sub_children`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sub_child_translations`
--
ALTER TABLE `sub_child_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basic_info_translations`
--
ALTER TABLE `basic_info_translations`
  ADD CONSTRAINT `basic_info_translations_basic_info_id_foreign` FOREIGN KEY (`basic_info_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD CONSTRAINT `blog_category_translations_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD CONSTRAINT `blog_translations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_cat_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD CONSTRAINT `service_translations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_category_translations`
--
ALTER TABLE `sub_category_translations`
  ADD CONSTRAINT `sub_category_translations_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_child_translations`
--
ALTER TABLE `sub_child_translations`
  ADD CONSTRAINT `sub_child_translations_sub_child_id_foreign` FOREIGN KEY (`sub_child_id`) REFERENCES `sub_children` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
