-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 04:38 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynewspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ali', 'alihossain.csecu@gmail.com', '$2y$10$LTlK/9kq7kAEK2Fii8Jq/.EymH/3tSe0V/IyHkRmJFA1s51nCDXKa', 'FJWq0bgK5OQIJw4TN0LVIIzPCBLg2h0pkGOxmGDvoIxp6XDh5kXSKSpgjC0c', '2019-08-12 18:00:00', '2019-08-12 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'Bangladesh', '1', 1),
(2, 'International', '?', 1),
(3, 'Business', 'DSD', 1),
(4, 'Politics', 'DSD', 1),
(5, 'Health', 'gsdgs', 1),
(6, 'Environment', 'gsdgs', 1),
(7, 'Education', 'cx', 1),
(8, 'Science & Tech', 'fasdfsa', 1),
(9, 'Sports', 'vczx', 1),
(10, 'Entertainment', 'vczx', 1),
(11, 'Bahar', 'asf', 1),
(12, 'Others', 'ggc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_31_095735_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newspost`
--

CREATE TABLE `newspost` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '12',
  `headline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheadline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `news_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `source_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  `editor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `publisher` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `picture` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newspost`
--

INSERT INTO `newspost` (`news_id`, `category_id`, `headline`, `subheadline`, `news_body`, `source_name`, `source_link`, `location`, `publication_status`, `rating`, `editor`, `publisher`, `picture`, `created_at`, `updated_at`) VALUES
(50, 1, 'বড় দুর্নীতিবাজেরা ধরাছোঁয়ার বাইরে: ড. কামাল', 'গণফোরাম সভাপতি ও জাতীয় ঐক্যফ্রন্টের আহ্বায়ক ড. কামাল হোসেন বলেছেন,', 'গণফোরাম সভাপতি ও জাতীয় ঐক্যফ্রন্টের আহ্বায়ক ড. কামাল হোসেন বলেছেন, স্বাধীনতার ৫০ বছর উদ্‌যাপন করতে গেলে দুর্নীতি, কালোটাকা ও নির্বাচনে কারসাজির মতো বিষয়গুলোয় খেয়াল রাখতে হবে। তিনি বলেছেন, ছোট দুর্নীতিবাজদের বিরুদ্ধে ব্যবস্থা নেওয়া হলেও বড় দুর্নীতিবাজেরা আছে ধরাছোঁয়ার বাইরে। বিজয় দিবস উপলক্ষে এক বিবৃতি ড. কামাল হোসেন এসব কথা বলেছেন। \r\n\r\nকামাল হোসেন বলেন, ‘আমরা যখন আমাদের স্বাধীনতার ৫০ বছর উদ্‌যাপন করতে যাচ্ছি, জনগণের অধিকার রক্ষা করতে এবং সমর্থন করতে সক্ষম হয়েছি, তখন দুর্নীতিবাজ, নির্বাচনে কারসাজি, কালোটাকা ভোটের অধিকারকে অস্বীকার করাসহ নেতিবাচক বিষয়গুলো গুরুত্বসহকারে খেয়াল রাখতে হবে। কালোটাকা ভোটের অধিকারকে অস্বীকার করে। ফলে জনগণ আইনের শাসন থেকে বঞ্চিত হয় এবং সংসদে জনগণের প্রতিনিধিত্ব হয় না। কারণ অর্থের প্রভাব অবাধ নির্বাচনে বাধা হয়ে দাঁড়ায়।’ তিনি আরও বলেন, প্রতিদিনই দুর্নীতির খবর আসে। কিন্তু দুর্নীতির জন্য নিম্ন স্তরের ব্যক্তিদের বিরুদ্ধেই ব্যবস্থা নেওয়া হচ্ছে। উচ্চস্তরে যারা দুর্নীতি করছে, তাদের বিরুদ্ধে আইন প্রয়োগকারী সংস্থা ব্যবস্থা নেয়নি।\r\n\r\nপ্রবীণ এই আইনজীবী বলেন, জাতীয় নেতাদের হত্যাকাণ্ড, সাম্প্রদায়িক বিভাজন সৃষ্টি এবং কালোটাকা ব্যবহারের মাধ্যমে রাজনীতি ও জনগণের প্রতিষ্ঠানগুলোকে কলুষিত করার মতো ঘটনার মতো নানান আঘাতের চেষ্টা সত্ত্বেও স্বাধীনতার প্রায় ৫০ বছর পূর্ণ হতে চলেছে। তবে এ জাতি সংবিধানের মূল্যবোধ এবং মানুষের গণতান্ত্রিক অধিকারকে ধরে রাখতে লড়াই করেছে। তিনি বলেন, ‘আমরা গর্বের সঙ্গে বলতে পারি যে সংবিধান বঙ্গবন্ধু, সৈয়দ নজরুল ইসলাম এবং তাজউদ্দীন আহমদ এবং আমাদের স্বাধীনতা আন্দোলনের অন্যান্য নেতাদের স্বাক্ষর বহন করে। অনেক বাধার চেষ্টা থাকলেও এখনো তা রয়েছে।’ কামাল হোসেন বলেন, নির্বাচনী গণতন্ত্র, জনপ্রতিনিধিদের দ্বারা শাসন, ভোটাধিকার দ্বারা নির্বাচিত সংসদের জবাবদিহি, বিচার বিভাগের স্বাধীনতা এবং আইনের শাসন যার মাধ্যমে সমস্ত নাগরিকের মৌলিক মানবাধিকার সুরক্ষিত থাকে, সেসব ব্যাপারে মানুষের ঐকমত্য রয়েছে। নিরপেক্ষ ও সুষ্ঠু নির্বাচন এবং জনগণের প্রকৃত প্রতিনিধি নির্বাচিত করতে হলে জনগণের ঐক্য অপরিহার্য বলে জানান। এ ছাড়া বলেন, এখন শপথ করা উচিত যে এই ত্রুটি-বিচ্যুতি, স্বেচ্ছাচারিতা এবং আইনের শাসনের অবহেলা আর থাকবে না এবং নিশ্চিত করতে হবে যে শাসনব্যবস্থা সংবিধানের মেনে চলছে, নির্বাচনগুলো নিরপেক্ষ, সুষ্ঠু এবং দুর্নীতি ও স্বেচ্ছাচারিতামুক্ত হচ্ছে।', 'প্রথম আলো', 'www.prothomalo.com', 'Dhaka', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/50.jpg', '2019-12-16 04:15:09', '2020-07-15 23:16:54'),
(51, 2, 'হোঁচট খেয়ে পড়ে গেলেন মোদি', 'সিঁড়ি দিয়ে ওঠার সময় হোঁচট খেয়েছেন ভারতের প্রধানমন্ত্রী নরেন্দ্র মোদি।', 'সিঁড়ি দিয়ে ওঠার সময় হোঁচট খেয়েছেন ভারতের প্রধানমন্ত্রী নরেন্দ্র মোদি। গতকাল শনিবার কানপুরে এ ঘটনা ঘটে। টাইমস অব ইন্ডিয়া অনলাইনের প্রতিবেদনে এ তথ্য জানানো হয়।\r\n\r\nগতকাল প্রধানমন্ত্রী মোদি ‘নমামি গঙ্গে’ প্রকল্পের গঙ্গা পরিচ্ছন্নের কাজ পরিদর্শন করতে কানপুরে যান। স্পিডবোটে চড়ে তিনি কাজ পরিদর্শন করেন। পরিদর্শন শেষে ‘অটল ঘাট’-এর সিঁড়ি বেয়ে উঠতে গিয়ে হোঁচট খেয়ে পড়ে যান মোদি।\r\n\r\nমোদি যখন সিঁড়িতে হোঁচট খান, তখন তাঁর সামনে-পেছনে ছিলেন নিরাপত্তার দায়িত্বে থাকা কর্মকর্তারা। ছিলেন নেতা-কর্মী ও সরকারি লোকজন। আর টিভি ক্যামেরা তো ছিলই।\r\n\r\nমোদি হঠাৎ হোঁচট খেয়ে পড়ে যাওয়ায় উপস্থিত সবাই হতভম্ব হয়ে যান। পাশে থাকা নিরাপত্তা কর্মকর্তারা ছুটে আসেন। সিঁড়িতে পড়ে যাওয়া প্রধানমন্ত্রীকে তাঁরা দ্রুত ধরেন। মোদি নিজেও পরিস্থিতি সামলে নেন। উঠে দাঁড়ান।\r\n\r\nনিজেকে খুব ‘ফিট’ দাবি করা মোদির এমন হোঁচট খাওয়ার ছবি-ভিডিও সামাজিক যোগাযোগমাধ্যমে ছড়িয়ে পড়েছে। এ নিয়ে কেউ কেউ মশকরাও করছেন।', 'প্রথম আলো', 'www.prothomalo.com', 'India', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/51.jpg', '2019-12-16 04:17:53', '2020-07-15 23:42:38'),
(52, 2, 'সংশোধিত নাগরিকত্ব আইনের বিরুদ্ধে পথে নামছেন মমতা', 'ভারতের সংশোধিত নাগরিকত্ব আইনের (সিএবি) বিরুদ্ধে সোমবার থেকে আন্দোলনে নামছেন পশ্চিমবঙ্গের মুখ্যমন্ত্রী', 'ভারতের সংশোধিত নাগরিকত্ব আইনের (সিএবি) বিরুদ্ধে সোমবার থেকে আন্দোলনে নামছেন পশ্চিমবঙ্গের মুখ্যমন্ত্রী ও তৃণমূল কংগ্রেস নেত্রী মমতা বন্দ্যোপাধ্যায়। দলের পক্ষ থেকে জানানো হয়েছে, ‘নো সিএবি, নো এনআরসি’ স্লোগান নিয়ে সোম, মঙ্গল ও বুধবার তিন দিন কলকাতা ও হাওড়ায় দলের প্রতিবাদ কর্মসূচিতে শামিল হবেন মমতা।\r\n\r\nকলকাতার বিভিন্ন সংবাদমাধ্যমে বলা হয়, এই প্রতিবাদে তৃণমূলের পক্ষ থেকে বিজেপিবিরোধী সব দলকে অংশ নিতে এবং শান্তিশৃঙ্খলা বজায় রাখার আহ্বান জানানো হয়েছে।\r\n\r\nসিএবির বিরুদ্ধে দেশটির সুপ্রিম কোর্টে এখন পর্যন্ত ১২টি মামলা হয়েছে। আরও মামলার প্রস্তুতি চলছে বলে বিভিন্ন সংগঠন ঘোষণা দিয়েছে।\r\n\r\nগত বৃহস্পতিবার ভারতের রাষ্ট্রপতি রামনাথ কোবিন্দ সংশোধিত নাগরিকত্ব বিলে অনুমোদন দেওয়ার পর দেশজুড়ে শুরু হয়েছে সিএবিবিরোধী আন্দোলন। দেশজুড়ে তীব্র প্রতিবাদ, আন্দোলন, রেল অবরোধ, স্টেশনে ট্রেন অবরোধসহ জ্বালাও–পোড়াওয়ের বিভিন্ন ঘটনা ঘটছে। পশ্চিমবঙ্গ, আসাম, ত্রিপুরা, মেঘালয় রাজ্যে সিএবির বিরুদ্ধে জোর আন্দোলন চলছে। কলকাতার পার্ক সার্কাসসহ রাজ্যের বিভিন্ন স্থানে সিএবির বিরুদ্ধে ব্যাপক আন্দোলন, মিছিল, সভা-সমাবেশ ও প্রতিবাদ হয়েছে।\r\n\r\nমমতা বন্দ্যোপাধ্যায় আগেই ঘোষণা দিয়েছিলেন, সংশোধিত নাগরিকত্ব আইন (সিএবি) এবং জাতীয় নাগরিক নিবন্ধনের (এনআরসি) বিরুদ্ধে লড়াই করে যাবেন। তিনি এই লড়াইকে দ্বিতীয় স্বাধীনতাসংগ্রাম বলে অভিহিত করেন। দলীয় সূত্রমতে, মমতা ২০ ডিসেম্বর নিজ দল তৃণমূল কংগ্রেসের সদর দপ্তরে দলীয় বিধায়ক-সাংসদ ও জেলা নেতাদের নিয়ে বৈঠক করবেন। নাগরিকত্ব বিল আইনে পরিণত হওয়ায় তৃণমূল কংগ্রেস কী করবে, এ বৈঠকে তা ঠিক করবেন তিনি।\r\n\r\nএর প্রতিক্রিয়ায় পশ্চিমবঙ্গ বিজেপির রাজ্য সভাপতি দিলীপ ঘোষ গতকাল শুক্রবার বলেছেন, মমতা দিদির ইন্ধনেই অশান্তির আগুন ছড়াচ্ছে বাংলায়। তিনি বাংলায় হিন্দু-মুসলিম দাঙ্গা লাগাতে চাইছেন।\r\n\r\nসিএবি আন্দোলনের জেরে ভারতের বিজেপির সর্বভারতীয় সভাপতি ও কেন্দ্রীয় স্বরাষ্ট্রমন্ত্রী অমিত শাহ কাল রোববার মেঘালয়ের রাজধানী শিলং সফর বাতিল করেছেন। নর্থ ইস্টার্ন পুলিশ একাডেমির একটি অনুষ্ঠানে তাঁর যোগ দেওয়ার কথা ছিল।\r\n\r\nঅপর দিকে ওডিশার মুখ্যমন্ত্রী নবীন পট্টনায়েক ঘোষণা দিয়েছেন, তাঁর রাজ্যে সিএবি মানা হবে না। এনআরসিও কার্যকর করা হবে না। গতকাল তাঁর সঙ্গে ওডিশার ভদ্রক, বালাসোর ও জয়পুর জেলার একটি মুসলিম প্রতিনিধিদল দেখা করতে এলে তিনি এ ঘোষণা দেন।\r\n\r\nসিএএবির বিরুদ্ধে ইতিমধ্যে ১২টি মামলা হয়েছে সুপ্রিম কোর্টে। আরও মামলার প্রস্তুতি নিয়েছে ভারতের বিভিন্ন সংগঠন ও প্রতিষ্ঠান। ইন্ডিয়ান ইউনিয়ন মুসলিম লীগ প্রথম আইনটির বিরুদ্ধে সুপ্রিম কোর্টে মামলা করেছে।', 'প্রথম আলো', 'www.prothomalo.com', 'India', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/52.jpg', '2019-12-16 04:19:22', '2020-07-15 23:17:15'),
(53, 2, 'ভারত সফর স্থগিত করেছেন জাপানের প্রধানমন্ত্রী', 'জাপানের প্রধানমন্ত্রী শিনজো আবে। ছবি: রয়টার্সজাপানের প্রধানমন্ত্রী শিনজো আবে', 'ভারতে নাগরিকত্ব সংশোধনী আইনের বিরুদ্ধে বিক্ষোভ চলছেই। আসামের পাশাপাশি দেশটির রাজধানী নয়াদিল্লি ও মেঘালয় রাজ্যের রাজধানী শিলং, পাঞ্জাবের অমৃতসর ও গুজরাটের আহমেদাবাদে বিক্ষোভ হয়েছে। এর মধ্যে দিল্লি ও শিলংয়ে পুলিশের সঙ্গে বিক্ষোভকারীদের সংঘর্ষও হয়েছে। এ ছাড়া পশ্চিমবঙ্গের মুর্শিদাবাদে রেলস্টেশনে আগুন দিয়েছে বিক্ষোভকারীরা। এই আইন প্রণয়নের পর জাপানের প্রধানমন্ত্রী শিনজো আবে তাঁর ভারত সফর স্থগিত করেছেন। ভারতীয় সংবাদমাধ্যম এনডিটিভির এক প্রতিবেদনে এসব তথ্য দেওয়া হয়।\r\n\r\nএ দিকে, নতুন এই আইন নিয়ে উদ্বেগ প্রকাশ করে জাতিসংঘ মানবাধিকারবিষয়ক কার্যালয় বলেছে, এই আইনে মুসলিমদের অন্তর্ভুক্ত না করায় তা ‘প্রকৃতিগতভাবে বৈষম্যমূলক’ হয়েছে। এই আইনের ফলাফল কী দাঁড়ায়, তা গভীরভাবে পর্যবেক্ষণ করা হচ্ছে বলে জানিয়েছেন জাতিসংঘের মহাসচিব আন্তোনিও গুতেরেস। এ ছাড়া ভারতের প্রতি ধর্মীয় সংখ্যালঘুদের অধিকার রক্ষার আহ্বান জানিয়েছে যুক্তরাষ্ট্র। এ দিকে ভারতের উত্তর-পূর্বাঞ্চলে নিজেদের নাগরিকদের ভ্রমণের ব্যাপারে সতর্ক করেছে যুক্তরাষ্ট্র ও যুক্তরাজ্য।\r\n\r\nভারতের পার্লামেন্টে নাগরিকত্ব সংশোধনী বিল পাস হওয়ার পর বৃহস্পতিবার এতে স্বাক্ষর করেন রাষ্ট্রপতি রামনাথ কোবিন্দ। এ আইনের প্রতিবাদে আসাম ও ত্রিপুরা কয়েক দিন ধরে কার্যত অচল। বিভিন্ন জায়গায় জারি করা হয়েছে কারফিউ, নামানো হয়েছে সেনাবাহিনী।\r\nরয়টার্স জানায়, গতকাল নয়াদিল্লিতে বিক্ষোভ করেন জামিয়া মিলিয়া ইসলামিয়া বিশ্ববিদ্যালয়ের শিক্ষার্থীরা। এ সময় পুলিশের সঙ্গে তাঁদের সংঘর্ষ হয়। এনডিটিভি জানায়, মেঘালয়ের শিলংয়েও বিক্ষোভকারীদের ছত্রভঙ্গ করতে পুলিশ কাঁদানে গ্যাসের শেল নিক্ষেপ ও লাঠিপেটা করেছে। মেঘালয়ের উইলিয়ামনগরে রাজ্যের মুখ্যমন্ত্রী কনরাদ সাংমার পথ অবরোধ করেন বিক্ষোভকারীরা। কেন্দ্রীয় স্বরাষ্ট্রমন্ত্রী অমিত শাহের কাল রোববারের শিলং সফর বাতিল করা হয়েছে। তাঁর সোমবারের অরুণাচল সফরও বাতিল করা হয়েছে।\r\nএএফপি জানায়, ভারতের পররাষ্ট্র মন্ত্রণালয়ের মুখপাত্র রবীশ কুমার গতকাল বলেন, জাপানের প্রধানমন্ত্রী শিনজো আবের ভারত সফর স্থগিত করা হয়েছে। তিন দিনের এ সফর কাল রোববার থেকে শুরু হওয়ার কথা ছিল। তিনি আর বিস্তারিত তথ্য দেননি।', 'Prothmalo', 'www.prothomalo.com', 'Japan', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/53.jpg', '2019-12-16 04:30:32', '2020-07-15 23:17:05'),
(54, 6, 'অস্ট্রেলিয়ায় আগামী সপ্তাহে উষ্ণতম দিনের রেকর্ড', 'অস্ট্রেলিয়ায় আগামী সপ্তাহে প্রচণ্ড দাবদাহ বয়ে যাবে', 'অস্ট্রেলিয়ায় আগামী সপ্তাহে প্রচণ্ড দাবদাহ বয়ে যাবে। এ সময় সে দেশে উষ্ণতম দিনের রেকর্ড হতে পারে। আবহাওয়ার পূর্বাভাসে এ তথ্য দিয়ে বলা হয়েছে, এ সময় পশ্চিমাঞ্চল থেকে পূর্ব দিকে লু হাওয়া বয়ে যাবে।\r\n\r\nআজ শনিবার বিবিসি অনলাইনের খবরে বলা হয়, ব্যুরো অব মেটেরোলজি (বিওএম) জানিয়েছে, আগামী বুধবার থেকে অনেক এলাকায় তাপমাত্রা ৪০ ডিগ্রি সেলসিয়াস পার হবে।\r\n\r\nএখন পর্যন্ত দেশটিতে সর্বোচ্চ তাপমাত্রা ৫০.৭ ডিগ্রি সেলসিয়াসের রেকর্ড রয়েছে। ১৯৬০ সালের ২ জানুয়ারি দক্ষিণ অস্ট্রেলিয়ার জনবিরল ওডনাডাট্টা শহরে ওই তাপমাত্রা রেকর্ড করা হয়েছিল।\r\n\r\nঅতিরিক্ত তাপমাত্রার আশঙ্কা সামনে রেখে অস্ট্রেলিয়ার পশ্চিমাঞ্চল ও কুইন্সল্যান্ডের কিছু অংশে অগ্নি সতর্কতা জারি করা হয়েছে।\r\n\r\nপশ্চিম অস্ট্রেলিয়ার পার্থে আজ শনিবার ৪০ ডিগ্রি এবং কাল রোববার ৪১ ডিগ্রি সেলসিয়াস তাপমাত্রা থাকবে বলে পূর্বাভাস দেওয়া হয়েছে। পশ্চিমাঞ্চলে উচ্চ তাপমাত্রা অব্যাহত থাকবে। অ্যাডিলেডে মঙ্গল ও বুধবার ৪০, বৃহস্পতিবার ৪১ এবং শুক্রবার ৪২ ডিগ্রি সেলসিয়াস তাপমাত্রা থাকবে। ভিক্টোরিয়া রাজ্যের মেলবোর্নে শুক্রবার তাপমাত্রা থাকবে ৪১ ডিগ্রি সেলসিয়াস। নিউ সাউথ ওয়েলস এবং উত্তরাঞ্চলের দক্ষিণের এলাকাগুলোতেও চরম গরম অনুভূত হবে।\r\n\r\nঅস্ট্রেলিয়ার গণমাধ্যম এবিসিকে দেওয়া সাক্ষাৎকারে বিওএমের আবহাওয়াবিদ ডায়না এডি বলেছেন, আগামী সপ্তাহে অস্ট্রেলিয়ায় চরম গরম পরিস্থিতি থাকবে। আগামী সাত দিন বা এর চেয়ে কিছু বেশি সময়ের মধ্যে অস্ট্রেলিয়ার দক্ষিণাঞ্চলের কিছু এলাকায় সর্বোচ্চ তাপমাত্রা রেকর্ড ছাড়িয়ে যেতে পারে। এখন পর্যন্ত দেশে সর্বোচ্চ তাপমাত্রার যে রেকর্ড রয়েছে, সেটিও ভেঙে যেতে পারে। তিনি জানান, এই সময়ে দেশটির গড় তাপমাত্রাও রেকর্ড ছাড়াতে পারে।\r\n\r\n২০১৩ সালের ৭ জানুয়ারি দেশটিতে সর্বোচ্চ গড় তাপমাত্রা ৪০.৩ ডিগ্রি সেলসিয়াস রেকর্ড করা হয়।', 'প্রথম আলো', 'www.prothomalo.com', 'Australia', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/54.jpg', '2019-12-16 04:32:04', '2020-07-16 21:17:20'),
(55, 3, 'ট্রাম্প–মোদির কাতারে পাকিস্তানের ইমরান', 'ভারতে যে সময় ইন্টারনেট পৌঁছায়নি, সে সময়ই ই-মেইল ব্যবহার করতেন দাবি করে এর আগে হাস্যরসের জন্ম দিয়েছিলেন', 'ভারতে যে সময় ইন্টারনেট পৌঁছায়নি, সে সময়ই ই-মেইল ব্যবহার করতেন দাবি করে এর আগে হাস্যরসের জন্ম দিয়েছিলেন ভারতের প্রধানমন্ত্রী নরেন্দ্র মোদি। জলবায়ু পরিবর্তনকে ‘ধাপ্পাবাজি’ আখ্যায়িত করে আলোচনা-সমালোচনার জন্ম দিয়েছেন যুক্তরাষ্ট্রের প্রেসিডেন্ট ডোনাল্ড ট্রাম্পও। এবার নতুন এক তত্ত্ব নিয়ে তাঁদের কাতারে নাম লিখিয়েছেন পাকিস্তানের প্রধানমন্ত্রী ইমরান খান। তিনি দাবি করেছেন, গাছ রাতে অক্সিজেন ছাড়ে।\r\n\r\nইমরানের এমন মন্তব্য সামাজিক যোগাযোগমাধ্যমে ব্যাপক ঝড় তুলেছে। বৃত্তি প্রদানসংক্রান্ত একটি অনুষ্ঠানে গিয়ে তিনি ওই মন্তব্য করেন। অনুষ্ঠানের একটি ভিডিও সামাজিক যোগাযোগমাধ্যমে ছড়িয়ে পড়েছে। এতে দেখা যায়, ইমরানের কথা শুনে উপস্থিত অনেকেই হাসি চাপার চেষ্টা করছেন।\r\n\r\nগাছ মূলত সালোকসংশ্লেষণের জন্য দিনের বেলায় কার্বন ডাই–অক্সাইড শোষণ করে এবং অক্সিজেন ছাড়ে। রাতে গাছ কার্বন ডাই–অক্সাইডই ছাড়ে। ইমরান খান এই জায়গায়ই ভুলটা করেছেন। তাঁর ওই মন্তব্যের পর সামাজিক যোগাযোগমাধ্যমে একদল ব্যবহারকারী প্রশ্ন তুলেছেন, অক্সফোর্ড বিশ্ববিদ্যালয়ে পড়া একজন কীভাবে এমন ভুল করতে পারেন। আরেক দল বিদ্রূপ করেছে, বিজ্ঞানের নতুন আবিষ্কার। ইমরানকে নোবেল পুরস্কার দেওয়া হোক।', 'প্রথম আলো', 'www.prothomalo.com', 'Pakistan', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/55.jpg', '2019-12-16 04:40:54', '2020-07-15 23:07:58'),
(56, 2, 'ফিনল্যান্ডে বুদ্ধিজীবীদের অবদান নিয়ে আলোচনা', 'হীদ বুদ্ধিজীবী দিবসকে সামনে রেখে ‘সমাজ গঠনে বাংলাদেশি বুদ্ধিজীবীদের অবদান’ নিয়ে ফিনল্যান্ডে', 'শহীদ বুদ্ধিজীবী দিবসকে সামনে রেখে ‘সমাজ গঠনে বাংলাদেশি বুদ্ধিজীবীদের অবদান’ নিয়ে ফিনল্যান্ডে অনুষ্ঠিত হয়েছে গোলটেবিল আলোচনা। বাংলাদেশ ডক্টরস প্ল্যাটফর্ম ইন ফিনল্যান্ড (বিডিপিএফ) এই গোলটেবিল আলোচনা আয়োজন করে।\r\n\r\nগতকাল শনিবার (১৪ ডিসেম্বর) স্থানীয় সময় বেলা ১১টায় ওডি হেলসিঙ্কি সেন্ট্রাল পাবলিক লাইব্রেরিতে গোলটেবিল আলোচনা সভা অনুষ্ঠিত হয়।\r\n\r\nএক মিনিট নীরবতা পালনের মাধ্যমে শহীদ বুদ্ধিজীবীদের প্রতি শ্রদ্ধা জানানোর মধ্য দিয়ে বিডিপিএফের গোলটেবিল আলোচনা শুরু করেন সঞ্চালক মো. মঞ্জুরে মওলা।\r\n\r\nআলোচনায় সমাজ গঠনে বাংলাদেশি বুদ্ধিজীবীদের অবদান নিয়ে মূল প্রবন্ধ উপস্থাপন করেন আলতো বিশ্ববিদ্যালয়ের লেকচারার গোলাম মো. সারওয়ার। তিনি শহীদ বুদ্ধিজীবীদের অসমাপ্ত কাজগুলো বর্তমান বাংলাদেশের বুদ্ধিজীবীরা কীভাবে সমাপ্ত করতে পারেন, তা নিয়ে আলোচনা করেন।\r\n\r\nগোলাম মো. সারওয়ার বলেন, বুদ্ধিজীবীদের চিন্তাচেতনা হতে হবে সৎ ও সর্বজনীন। শহীদ বুদ্ধিজীবীদের মূল্যবোধ, মানবিকতা ও মহানুভবতাকে সামনে রেখে, ক্ষমতার উচ্চশিখরে আসীন মানুষদের এগিয়ে আসতে হবে সহজ-সরল বাংলাদেশের মানুষের স্বাভাবিক জীবন ব্যবস্থা নিশ্চিতকল্পে।\r\n\r\nগোলাম মো. সারওয়ার আরও বলেন, মুখোশধারী বুদ্ধিজীবীদের সম্পর্কে সমাজকে জানাতে ও চেনাতে হবে; বিশেষ করে যাঁরা ভুয়া বুদ্ধিজীবী হিসেবে সুবিধা গ্রহণ করছেন।\r\n\r\nআলোচনায় অংশ নেন বিডিপিএফের সদস্য ড. মাহবুব রহমান, ড. জহিরুল ইসলাম, ড. আশরাফুল আলম, ড. এস এম হারুন-অর-রশীদ, ড. শিপুল বড়ুয়া, ড. শাকিলা-বু-পাশা ও ড. মো. মঞ্জুরে মওলা। অনলাইনে যোগ দেন ড. কামরুল হাসান।\r\n\r\nএ ছাড়া আলোচনায় হার্ভার্ড বিশ্ববিদ্যালয় থেকে অনলাইনে সিনিয়র রিসার্স ফেলো সাবিরুদ্দিন মির্জা আলোচক হিসেবে অংশগ্রহণ করার কথা থাকলেও কারিগরি সমস্যার কারণে তিনি অংশগ্রহণ করতে পারেননি।\r\n\r\nআলোচনার শেষে উপস্থিত সবাই একমত পোষণ করেন, প্রবাসী বাংলাদেশি তথা নতুন প্রজন্মের মাঝে শহীদ বুদ্ধিজীবীদের ত্যাগ-তিতিক্ষা এবং বাংলাদেশ নিয়ে তাঁদের চিন্তাচেতনার কথা পৌঁছে দিতে হবে।\r\n\r\nআলোচনায় আরও স্থান পায় একটি দেশের মেরুদণ্ডকে ভেঙে দেওয়ার জন্য বিজয়ের মাত্র দুদিন আগে বাংলার শ্রেষ্ঠ সন্তানদের হত্যার মধ্য দিয়ে পাকিস্তানি বাহিনী প্রমাণ করেছে, তারা কত ভয়ংকর ছিল। এর মাধ্যমে পাকিস্তানি বাহিনী তৈরি করেছে পৃথিবীর ইতিহাসে এক কালো অধ্যায়।\r\n\r\nঅনুষ্ঠানে বিডিপিএফের পক্ষ থেকে ফুল দিয়ে অভিনন্দন জানানো হয় হেলসিঙ্কি বিশ্ববিদ্যালয় ও তাম্পেরে বিশ্ববিদ্যালয় থেকে ডক্টর ডিগ্রি অর্জনকারী প্রবাসী বাংলাদেশি ড. শাকিলা-বু-পাশা ও সৈয়দা সাকিরা হাসানকে। বিজ্ঞপ্তি', 'প্রথম আলো', 'www.prothomalo.com', 'Finland', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/56.jpg', '2019-12-16 04:55:38', '2020-07-15 23:16:58'),
(57, 11, 'সপ্তমবারের মত বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত ড. সুমন', 'বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত হলেন ড. সুমন ভাই', 'টানা সপ্তমবারের মত বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত হলেন ড. সুমন ভাই। টানা সপ্তমবারের মত বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত হলেন ড. সুমন ভাই । টানা সপ্তমবারের মত বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত হলেন ড. সুমন ভাই। টানা সপ্তমবারের মত বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত হলেন ড. সুমন ভাই  । টানা সপ্তমবারের মত বাহার গ্রুপের ভাইস-প্রেসিডেন্ট নির্বাচিত হলেন ড. সুমন ভাই। বাহার বার্তা।', 'প্রথম আলো', 'www.prothomalo.com', 'চট্টগ্রাম', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/57.jpg', '2019-12-16 18:29:19', '2020-07-15 23:17:20'),
(58, 3, 'পান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু', 'আমাদের দেশে হবে সেই ছেলে কবে? কথায়  না বড় হয়ে কাজে বড় হবে?', '<br />', 'প্রথম আলো', 'www.prothomalo.com', 'Satkhira', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/58.jpg', '2020-02-03 04:30:00', '2020-07-15 23:15:18'),
(59, 2, 'প্রথমবার ব্রিটিশ এমপি নির্বাচিত হলেন আফসানা বেগম', 'জমকালো অষ্টম প্রতিষ্ঠা বার্ষিকী উদযাপন করতে দেশবাসীকে আহবান : প্রেসিডেন্ট, বাহার গ্রুপ', 'জমকালো অষ্টম প্রতিষ্ঠা বার্ষিকী উদযাপন করতে দেশবাসীকে আহবান : প্রেসিডেন্ট, বাহার গ্রুপ\r\n\r\nজমকালো অষ্টম প্রতিষ্ঠা বার্ষিকী উদযাপন করতে দেশবাসীকে আহবান : প্রেসিডেন্ট, বাহার গ্রুপ\r\n\r\nজমকালো অষ্টম প্রতিষ্ঠা বার্ষিকী উদযাপন করতে দেশবাসীকে আহবান : প্রেসিডেন্ট, বাহার গ্রুপ\r\nজমকালো অষ্টম প্রতিষ্ঠা বার্ষিকী উদযাপন করতে দেশবাসীকে আহবান : প্রেসিডেন্ট, বাহার গ্রুপজমকালো অষ্টম প্রতিষ্ঠা বার্ষিকী উদযাপন করতে দেশবাসীকে আহবান : প্রেসিডেন্ট, বাহার গ্রুপ', 'প্রথম আলো', 'www.prothomalo.com', 'Australia', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/59.png', '2020-02-03 04:32:42', '2020-07-15 23:16:46'),
(60, 8, 'পান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু', 'আমাদের দেশে হবে সেই ছেলে কবে? কথায়  না বড় হয়ে কাজে বড় হবে?', 'পান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু\r\n\r\nপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু\r\n\r\nপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু\r\n\r\nপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু\r\nপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু\r\n\r\nপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যুপান্তা ভাত খেতে গিয়ে জোইস্যার মৃত্যু', 'প্রথম আলো', 'www.prothomalo.com', 'Khulna', 1, 0, 'আলী হোসেন রিংকু', 'Self Correspondant', 'public/uploaded_images/60.jpg', '2020-02-03 04:38:05', '2020-07-15 23:42:14'),
(61, 2, 'সোমবারে দেশে ফিরছেন প্রধানমন্ত্রী', 'আগামিকাল সোমবার দেশে ফিরবেন হাসিনা', 'ঙ্ককনল্কনলফক্সক্বলন্বক্স', 'যদী', 'ফক্সফ', 'ঢাকা', 1, 0, 'আলি', 'Self Correspondant', 'public/uploaded_images/61.jpg', '2020-07-15 21:02:28', '2020-07-15 23:42:25'),
(62, 10, 'নতুন মডেল রামিসা টিভির পর্দায়!', 'াফাফাসদফা', 'নোয়াখালীর রামিসার হাঁস পালনে সাফল্য! নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!নোয়াখালীর রামিসার হাঁস পালনে সাফল্য!', 'প্রথপম', '্ভদব্দযফ', 'নোয়াখালি', 1, 0, 'রিংকু', 'Self Correspondant', 'public/uploaded_images/62.JPG', '2020-07-15 21:20:48', '2020-07-16 21:16:09'),
(63, 3, 'হাঁস পালনে সফল নোয়াখালীর রিয়ন', 'আগামিকাল সোমবার দেশে ফিরবেন হাসিনা', 'হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন! হাস মুরগি পালন করছেন নোয়াখালীর রিয়ন!', 'যদী', '্ভদব্দযফ', 'নোয়াখালি', 1, 0, 'আলি', 'Self Correspondant', 'public/uploaded_images/63.JPG', '2020-07-15 21:22:02', '2020-07-16 21:15:46'),
(65, 11, 'নীলাচলের সূর্যাস্ত দেখতে গেলেন প্রেসিডেন্ট', 'fasপ্রথম', 'afn;ksankfnka;knnk', '্প্রথম', 'আলো', 'Dhaka', 1, 0, 'al;fsfnm', 'Self Correspondant', 'public/uploaded_images/65.jpg', '2020-07-15 23:28:51', '2020-07-17 01:14:08'),
(66, 9, 'Safiul Alam', 'DSD', 'dfg\r\n\r\nsdgsdg\r\n\r\nsdgs\r\ng', 'DSD', 'ASFF', 'DL', 0, 0, 'FKFS', 'Self Correspondant', 'public/uploaded_images/66.JPG', '2020-07-16 00:09:01', '2020-07-16 16:55:57'),
(68, 4, 'gfdszg', 'sgdsg', 'sdags', NULL, NULL, 'sdg', 0, 0, 'sdg', 'Self Correspondant', 'public/uploaded_images/68.jpg', '2020-07-16 00:41:43', '2020-07-16 16:55:55'),
(69, 4, 'Ramisa is just wow rocking', 'DSDDDSAD', 'kfbgd', 'SDA', 'ASDF', 'Dhaka', 1, 0, 'Editorbf', 'Self Correspondant', 'public/uploaded_images/69.jpg', '2020-07-16 00:43:05', '2020-07-16 22:30:06'),
(70, 10, 'দেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরু', 'অভিনেত্রী শাবনুর দেশে ফিরলেন , শ্যুটিং শুরু কদিন পরেই', 'দেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরু\r\n\r\nদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরু\r\n\r\n\r\nদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরু। দেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরু\r\nদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরুদেশে ফিরলেন শাবনুর, কদিন পরেই শ্যুটিং শুরু', 'সাদা', 'কালো', 'চট্টগ্রাম', 1, 0, 'সাখাওয়াত', 'Self Correspondant', 'public/uploaded_images/70.jpg', '2020-07-16 23:09:59', '2020-07-16 23:47:29'),
(71, 1, 'রাজনীতিতে করবেন না জয়!', 'সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।', 'সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।\r\n\r\nসজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।সজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।\r\n\r\nসজীব ওয়াজেদ জয় রাজনীতি করবেন না বলে গুঞ্জন উঠেছে।', NULL, NULL, 'Dhaka', 1, 0, 'নিজস্ব প্রতিবেদক', 'Self Correspondant', 'public/uploaded_images/71.jpg', '2020-07-16 23:13:48', '2020-07-16 23:13:48'),
(72, 7, 'চবি শিক্ষার্থীদের চবি ভ্রমন!', 'চবি শিক্ষার্থীর চবি ভ্রমন!', 'চবি শিক্ষার্থীর চবি ভ্রমন! চবি শিক্ষার্থীর চবি ভ্রমন! চবি শিক্ষার্থীর চবি ভ্রমন! চবি শিক্ষার্থীর চবি ভ্রমন! চবি শিক্ষার্থীর চবি ভ্রমন! চবি শিক্ষার্থীর চবি ভ্রমন!', NULL, NULL, 'চট্টগ্রাম', 1, 0, 'নিজস্ব প্রতিবেদক', 'Self Correspondant', 'public/uploaded_images/72.jpg', '2020-07-18 20:59:08', '2020-07-18 20:59:08'),
(73, 12, 'Dhaka Attack Movie3', 'Released a new movie in cinema hall!', 'Released a new movie in cinema hall! Released a new movie in cinema hall! Released a new movie in cinema hall!Released a new movie in cinema hall! Released a new movie in cinema hall!', NULL, NULL, 'Dhaka', 0, 0, 'Self Correspondent', 'Self Correspondant', 'public/uploaded_images/73.JPG', '2020-07-18 22:15:14', '2020-07-19 23:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ali Hossain', 'alihossain.csecu@gmail.com', '$2y$10$LTlK/9kq7kAEK2Fii8Jq/.EymH/3tSe0V/IyHkRmJFA1s51nCDXKa', 'q8XEL49Wr30Go0cRurLYuXi235B29vhNPbMeqdcFOytlpDkwfzKX38cmURj6', '2019-08-13 06:37:39', '2019-08-13 06:37:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newspost`
--
ALTER TABLE `newspost`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newspost`
--
ALTER TABLE `newspost`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
