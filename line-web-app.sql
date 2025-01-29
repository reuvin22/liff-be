-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2025 at 06:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `line-web-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `Question_1` varchar(255) DEFAULT NULL,
  `Question_2` varchar(255) DEFAULT NULL,
  `Question_3` varchar(255) DEFAULT NULL,
  `Question_4` varchar(255) DEFAULT NULL,
  `Question_5` varchar(255) DEFAULT NULL,
  `Question_6` varchar(255) DEFAULT NULL,
  `Question_7` varchar(255) DEFAULT NULL,
  `Question_8` varchar(255) DEFAULT NULL,
  `Question_9` varchar(255) DEFAULT NULL,
  `Question_10` varchar(255) DEFAULT NULL,
  `Question_11` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `userId`, `Question_1`, `Question_2`, `Question_3`, `Question_4`, `Question_5`, `Question_6`, `Question_7`, `Question_8`, `Question_9`, `Question_10`, `Question_11`, `created_at`, `updated_at`) VALUES
(1, '1', '客観視点', '好奇心', 'QWEQW', 'QWEQW', 'SDSA', 'ZXCZX', '!#!@321', 'SADSAqwe', 'QWEQWSAd', '21321', 'ASDSA', '2025-01-21 14:57:05', '2025-01-21 14:57:05'),
(2, '1', '客観視点', '柔軟性', 'QWEWQ', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEst', 'TEST', 'TEST', '2025-01-22 11:22:49', '2025-01-22 11:22:49'),
(3, '1', '客観視点', '柔軟性', 'QWEWQ', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEst', 'TEST', 'TEST', '2025-01-22 11:24:25', '2025-01-22 11:24:25'),
(4, '1', '客観視点', '柔軟性', 'QWEWQ', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEst', 'TEST', 'TEST', '2025-01-22 11:26:32', '2025-01-22 11:26:32'),
(5, '1', '客観視点', '柔軟性', 'QWEWQ', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEst', 'TEST', 'TEST', '2025-01-22 11:28:01', '2025-01-22 11:28:01'),
(6, '1', '客観視点', '柔軟性', 'QWEWQ', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEst', 'TEST', 'TEST', '2025-01-22 11:31:19', '2025-01-22 11:31:19'),
(7, NULL, 'コミュニケーション能力', '計画性', 'TQWEQW', 'QWEWQ', 'EWTEWRQWE', 'QWEWQEWQ', 'ADSADAS', 'TRETRE', 'QWEQW', 'QWEQW', 'QWSADAS', '2025-01-22 12:38:05', '2025-01-22 12:38:05'),
(8, NULL, 'コミュニケーション能力', '行動力', '21312', 'wqeqw', '2131', '34534', 'reter', 'qweqw', 'trytr', 'qweqw', 'qweqw', '2025-01-22 12:39:32', '2025-01-22 12:39:32'),
(9, NULL, '客観視点', 'コミュニケーション能力', 'qwewq', 'qwewq', '3qsdaas', '213qweqw', 'dqwdac', '1232eqw', 'qwewq', '21312', 'qweasdas', '2025-01-22 12:41:37', '2025-01-22 12:41:37'),
(10, NULL, '課題認識力', '危機管理能力', 'qweqw', 'qweqw', '12321', 'qwewdsa', 'qwewqeqw', 'sdszcxz', 'dfadsa', 'dsfgdsf', 'qweqweqw', '2025-01-22 12:44:38', '2025-01-22 12:44:38'),
(11, NULL, 'コミュニケーション能力', 'コミュニケーション能力', 'TEASD', 'QWEQW', 'DASDAS', 'TEWREW', 'ERTERSD', 'yTERT', 'qweq', 'qweqw', 'QWESAD', '2025-01-22 12:47:25', '2025-01-22 12:47:25'),
(12, NULL, '行動力', '客観視点', 'qwewq', 'qweqw', 'qweqweq', 'sadsadsa', NULL, 'qweqweqw', 'qwewq', 'asdsadsa', 'qwewqeqw', '2025-01-22 13:05:38', '2025-01-22 13:05:38'),
(13, 'U74bc9388db32ce74b3e35e88ea53f997', '交渉力', '好奇心', 'QWEQW', 'ASDSA', 'QWEQW', '12321', 'SADSA', 'QWEQW', 'ASDAS', 'QWEWQ', 'QWEQW', '2025-01-22 13:09:02', '2025-01-22 13:09:02'),
(14, 'U74bc9388db32ce74b3e35e88ea53f997', '行動力', '状況対応能力', 'QWEWQ', 'QWEQW', 'ASDSA', 'ASDSA', 'QWEQW', 'QWEQW', 'ASDSA', 'QWEQW', 'ASDSA', '2025-01-22 13:10:28', '2025-01-22 13:10:28'),
(15, 'U74bc9388db32ce74b3e35e88ea53f997', '行動力', 'コミュニケーション能力', 'QWEQW', 'ASDSA', 'QWEQW', 'ASDAS', 'QWEQW', 'QWEQW', 'qwewq', 'QWEQW', 'ASDSA', '2025-01-22 13:18:27', '2025-01-22 13:18:27'),
(16, 'U74bc9388db32ce74b3e35e88ea53f997', '営業知識', '営業力', 'QWEWQEWQ', 'SADSA', 'SDFDS', 'rtytrytr', 'qwewqeqw', 'qwewqewq', 'qwewq', '213sdsa', 'qwewqesad', '2025-01-22 13:25:16', '2025-01-22 13:25:16'),
(17, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', '行動力', 'QWEQWEQW', 'ASDSADAS', 'QWEQW', 'qweqw', 'SDAS', 'QWEQW', 'QWEQW', 'ESAD', 'QWEQW', '2025-01-22 13:26:41', '2025-01-22 13:26:41'),
(18, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '柔軟性', 'QWEQW', 'QWEQW', 'ASDSA', 'QWEQW', 'SCXZC', 'QWEQW', 'ADSA', 'QWEQW', 'ASDASDAS', '2025-01-22 13:28:33', '2025-01-22 13:28:33'),
(19, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', '柔軟性', 'qweqw', 'QWEQW', 'SADAS', 'WQEQW', 'ZXCZX', 'QWEQW', 'QWEQW', 'SADAS', 'QWEWQ', '2025-01-22 13:44:13', '2025-01-22 13:44:13'),
(20, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', '好奇心', 'QWEQW', 'ASDQWE', 'QWESAD', 'QWEWQ', 'ASDQWD', 'SADXCZ', 'QWESAd', 'QWEASD', 'QWE213', '2025-01-22 13:45:29', '2025-01-22 13:45:29'),
(21, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '柔軟性', 'QWEWQ', 'ASDSA', 'QWEQW', 'WQEQW', 'QWEQW', 'ASDSA', 'QWEQW', 'qwe', 'QWEQW', '2025-01-22 13:48:02', '2025-01-22 13:48:02'),
(22, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', '好奇心', 'QWEWQ', 'ASDSA', 'QWEQW', 'QWEQ', 'W', 'QWEq', 'ASDAS', 'ZXCzx', 'QWEQW', '2025-01-22 13:49:48', '2025-01-22 13:49:48'),
(23, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', 'コミュニケーション能力', 'QWEQW', 'ASDSA', 'QWE', 'QWE', 'ASDS', 'ZXCZX', 'QWEQW', 'ASDAS', 'QWEQW', '2025-01-22 13:50:14', '2025-01-22 13:50:14'),
(24, 'U74bc9388db32ce74b3e35e88ea53f997', '行動力', '計画性', 'QWEWQ', 'QWEQW', 'ASDSA', 'QWEQW', 'ZXCZX', 'QWEQW', 'QWEqw', 'qwewq', 'QWEQW', '2025-01-22 13:53:51', '2025-01-22 13:53:51'),
(25, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '情報収集能力', 'QWEQWEQW', 'WQEQW', 'ASDAS', 'QWEQW', 'ZXCZX', 'QWEQW', 'ASDSA', 'QWEQW', 'ASDAS', '2025-01-22 13:56:30', '2025-01-22 13:56:30'),
(26, NULL, 'コミュニケーション能力', 'コミュニケーション能力', 'QWEQW', 'QWEQW', 'ASDSA', 'CZX', 'QWEQW', 'QWEQW', 'QWEQW', 'QWEQW', 'QWEQW', '2025-01-22 13:58:37', '2025-01-22 13:58:37'),
(27, NULL, 'コミュニケーション能力', 'コミュニケーション能力', 'QWEQW', 'QWEQW', 'ASDSA', 'CZX', 'QWEQW', 'QWEQW', 'QWEQW', 'QWEQW', 'QWEQW', '2025-01-22 13:59:15', '2025-01-22 13:59:15'),
(28, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', 'コミュニケーション能力', 'QWEQW', 'QWEQW', 'QWEQW', 'ASDSA', 'QWEQW', 'ASDAS', 'QWEWQ', 'QWEQW', 'QWEQW', '2025-01-22 14:00:30', '2025-01-22 14:00:30'),
(29, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', 'コミュニケーション能力', 'QWEQW', 'QWEWQ', 'QWEQW', 'QWEQW', 'QWEQW', 'QWEQW', 'ASDSA', 'QWEQW', 'QWEQW', '2025-01-22 14:01:25', '2025-01-22 14:01:25'),
(30, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '客観視点', 'QWEQW', 'QWEQW', 'QWEQW', 'ASDSA', 'QWEQW', 'SDAS', 'QWEQW', 'ASDSA', 'QWEQW', '2025-01-22 14:02:48', '2025-01-22 14:02:48'),
(31, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '交渉力', 'WQEQW', 'ASDAS', 'QWEQW', 'QWEQWE', 'QWEQW', 'ASDSA', 'QWEQW', 'QWEQW', 'ASDSA', '2025-01-22 14:43:02', '2025-01-22 14:43:02'),
(32, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', '交渉力', 'QWEQW', 'QWEQW', 'ASDAS', 'QWEQW', 'ASDAS', 'XCZX', 'QWEQW', 'QWEQW', 'ASDSA', '2025-01-22 14:44:02', '2025-01-22 14:44:02'),
(33, 'U74bc9388db32ce74b3e35e88ea53f997', '課題認識力', '協調性', 'QWEWQEQW', 'QWEWQEQW', 'QWEWQEQW', 'QWEQWDSA', 'QWEWQEQW', 'ASDASDAS', 'QWEQWEQW', 'ZXCZXCZ', 'QWEQWEQW', '2025-01-22 14:51:56', '2025-01-22 14:51:56'),
(34, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', '状況対応能力', 'QEQWEWQ', 'ASDSA', 'EWTEWR', 'ZXCZ', 'ASDAS', 'QWEQW', '12321', 'QWEQW', 'ASDSA', '2025-01-22 14:55:14', '2025-01-22 14:55:14'),
(35, 'U74bc9388db32ce74b3e35e88ea53f997', '応用力', '営業力', 'QWEQW', 'ASDSA', 'ZXZ', 'QWEQW', 'ASDSA', 'QWEQW', 'QWEWQ', 'ASDSA', 'QWEW', '2025-01-22 14:59:37', '2025-01-22 14:59:37'),
(36, 'U74bc9388db32ce74b3e35e88ea53f997', '営業知識', '応用力', 'QWEQW', 'QWEQW', 'ASDAS', 'ASDAS', 'qWEQW', 'SADAS', 'ZCZXC', 'QWEQW', 'ASDSADAS', '2025-01-22 15:19:43', '2025-01-22 15:19:43'),
(37, 'U74bc9388db32ce74b3e35e88ea53f997', '営業知識', '課題認識力', 'qweQWEQW', 'QWEQW', 'ASDASDAS', 'QWEQWEQW', 'ASDAS', 'QWEQW', 'QWEQW', 'qweqweqw', 'QWEWQEQWEQW', '2025-01-22 15:20:03', '2025-01-22 15:20:03'),
(38, 'U74bc9388db32ce74b3e35e88ea53f997', '営業知識', '応用力', 'WQEQWEQW', 'SADAS', 'QWEQW', 'ZXCZX', 'QWEQW', 'ASDAS', 'QWEQW', 'ASDAS', 'QWEQWEQWEQW', '2025-01-22 15:34:44', '2025-01-22 15:34:44'),
(39, 'U74bc9388db32ce74b3e35e88ea53f997', '計画性', 'コミュニケーション能力', 'QWEWQEWQ', 'QWEWQ', 'WQEQW', NULL, 'ASDSA', 'SADZXC', 'QWEQW', 'ASDASD', 'QWEWQEQW', '2025-01-22 15:35:52', '2025-01-22 15:35:52'),
(40, 'U74bc9388db32ce74b3e35e88ea53f997', '営業知識', '気配り', 'QWEQW', 'ASDSAC', 'QWESAD', 'WQEQWE', 'SDFSDFSD', 'XCVCVcx', 'QWEQW', '21312SADAS', 'QWEQWEQW', '2025-01-22 15:37:11', '2025-01-22 15:37:11'),
(41, 'U74bc9388db32ce74b3e35e88ea53f997', '柔軟性', 'コミュニケーション能力', 'TESt', 'QWEQW', 'SADAS', 'CSS', 'QWEQW', 'ASDSA', 'ASDAS', 'QWEWQ', 'QWEWQ', '2025-01-22 16:37:14', '2025-01-22 16:37:14'),
(42, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '行動力', 'WQEWQ', 'SADSA', 'QWEQWEQW', 'CXZC', 'QWEQW', 'ASDASDSA', 'QWEQW', 'QWEQW', 'ASDSAD', '2025-01-22 16:37:43', '2025-01-22 16:37:43'),
(43, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', 'コミュニケーション能力', 'WQEWQ', 'ASDSA', 'QWEQW', 'ZXCZX', 'QWEWQ', 'ASDSA', 'QWEQW', 'ASDSA', 'QWEWQEQW', '2025-01-22 16:40:15', '2025-01-22 16:40:15'),
(44, 'U74bc9388db32ce74b3e35e88ea53f997', 'コミュニケーション能力', 'コミュニケーション能力', 'QWEWQ', 'QWEQW', 'ASDSAD', 'QWEWQ', 'SADSA', 'CXXCZ', 'QWEQW', 'ASDASDAS', 'QWEQWEQW', '2025-01-22 16:42:33', '2025-01-22 16:42:33'),
(45, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '好奇心', 'EWQEQW', 'ASDSA', 'QWEQW', 'ZXCZX', 'qWEQW', 'ASDASDAS', 'QWEQW', 'ASDAS', 'QWEQWEQW', '2025-01-22 16:46:43', '2025-01-22 16:46:43'),
(46, 'U74bc9388db32ce74b3e35e88ea53f997', '営業知識', '応用力', 'QWEQWEQW', 'ASDSAD', 'QWEQW', 'ASDSSAD', 'QWEQW', 'ASDSA', 'QWEQW', 'QWEWQ', 'QWEWQEQW', '2025-01-22 16:48:14', '2025-01-22 16:48:14'),
(47, 'U74bc9388db32ce74b3e35e88ea53f997', '客観視点', '柔軟性', '123', 'qweqw', 'qweqw', 'qwewqe', 'qweqw', '21321', 'qweqw', 'qwewq', 'qweqw', '2025-01-22 17:08:55', '2025-01-22 17:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('openAiResponse_U74bc9388db32ce74b3e35e88ea53f997', 's:1473:\"This data appears to be a JSON object containing information related to a set of questions answered by a user with the ID \"U74bc9388db32ce74b3e35e88ea53f997\". The questions are labeled from \"Question_1\" to \"Question_11,\" and each question has a corresponding answer.\n\nHere\'s a breakdown of the data:\n\n- `userId`: A unique identifier for the user, which is \"U74bc9388db32ce74b3e35e88ea53f997.\"\n- `Question_1`: The answer is \"\\u5ba2\\u89b3\\u8996\\u70b9,\" which is the Unicode representation for the Japanese term \"客観視点,\" meaning \"objective viewpoint\" or \"objectivity.\"\n- `Question_2`: The answer is \"\\u67d4\\u8edf\\u6027,\" the Unicode representation for the Japanese term \"柔軟性,\" meaning \"flexibility.\"\n- `Question_3`: The answer is \"123,\" which seems to be a numerical response.\n- `Question_4` to `Question_11`: These answers are non-standard responses consisting of characters \"qweqw,\" \"qwewqe,\" and \"21321,\" which could be placeholder text or user-generated responses.\n\n- `updated_at` and `created_at`: Timestamps indicating when the data was created and last updated, both set to \"2025-01-23T01:08:55.000000Z,\" suggesting that the data was created and updated simultaneously on January 23, 2025, which is beyond my training data timeframe.\n\n- `id`: A unique identifier for this data entry, which is \"47.\"\n\nThis data seems to be part of a survey or form filled out by a user, where the answers are captured in a structured manner for later analysis or processing.\";', 1737598145);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_imports`
--

CREATE TABLE `data_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_id` varchar(255) DEFAULT NULL,
  `question_number` int(10) UNSIGNED DEFAULT NULL,
  `questions` longtext DEFAULT NULL,
  `writing_advice` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_imports`
--

INSERT INTO `data_imports` (`id`, `data_id`, `question_number`, `questions`, `writing_advice`, `created_at`, `updated_at`) VALUES
(8, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 1, '自分の強みとなる「1つ目の知識や能力」を選択してください。', '- データ分析技術: データサイエンスの経験を活かし、複雑なデータセットを解釈できます。\n- プロジェクト管理: 効果的なタスク優先順位付けと時間管理が得意です。\n- コミュニケーションスキル: チーム内での円滑な情報共有をサポートします。\n- コーディング能力: 複数のプログラミング言語に精通しています。\n- 問題解決能力: 創造的なアプローチで課題を解決します。', '2025-01-22 16:25:20', '2025-01-22 16:25:20'),
(9, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 2, '自分の強みとなる「2つ目の知識や能力」をプルダウンから選択してください。', '選択肢の具体的な内容を見極め、専門職に応じたスキルや経験を関連付けましょう。自分のキャリアや業界での成功例を挙げて関連性を示します。\n\n- デジタルマーケティング戦略の構築\n- データ分析と意思決定支援\n- プログラミングとアルゴリズム設計\n- 国際的なビジネスネットワーク構築\n- クリティカルシンキングと問題解決能力', '2025-01-22 16:25:25', '2025-01-22 16:25:25'),
(10, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 3, 'その強みを発揮した大学時代の「活動名」を「〇〇の活動」という形式で具体的に記入してください。', '- リーダーシップを発揮した大学時代の「学生委員会活動」\n- 問題解決力を発揮した大学時代の「地球温暖化プロジェクト活動」\n- 創造性を発揮した大学時代の「アートクラブ活動」\n- コミュニケーション力を発揮した大学時代の「国際ボランティア活動」\n- 組織力を発揮した大学時代の「文化祭実行委員活動」', '2025-01-22 16:25:28', '2025-01-22 16:25:28'),
(11, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 4, 'その活動の中での「活動の目的や目標」を記入してください。', '- そのプロジェクトにおける「活動の目的や目標」を明確にする。\n- 「活動の具体的な成果を定義し、進捗を測定する」ための指標を設定する。\n- 「チームのスキル向上と協力を促進する」ことを目標に掲げる。\n- 「顧客の要求や期待を超えるサービスを提供する」ことを目的とする。\n- 「持続可能性を重視し、環境に配慮した実践を行う」ことを目指す。', '2025-01-22 16:25:33', '2025-01-22 16:25:33'),
(12, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 5, 'その活動でのあなたが「担った役割」を記入してください。', '- プロジェクトリーダーとしてチームを統率。\n- 開発者として新機能のコーディング。\n- 分析担当としてデータ解析を実施。\n- コーチとして新人の育成と指導を担当。\n- マーケティング担当として戦略立案を実施。', '2025-01-22 16:25:35', '2025-01-22 16:25:35'),
(13, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 6, 'その活動での課題を記入してください。', '活動の特性を理解し、具体的で測定可能な課題を特定します。課題の背景情報や影響範囲を含めると問題解決に役立ちます。\n\n- コミュニケーション不足による誤解\n- リソースの制約\n- 技術的な知識の欠如\n- 納期遅延\n- 多様性の欠如', '2025-01-22 16:25:37', '2025-01-22 16:25:37'),
(14, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 7, '課題に対してどのように取り組んだか記入してください。', '- 詳細なプロジェクト計画を策定し、期日と目標を明確に設定しました。\n- チーム内で役割を明確化し、定期的なミーティングで進捗を報告し合いました。\n- 必要なリソースを調査し、適切なものを効率的に活用しました。\n- フィードバックに基づき、プロセスを改善して柔軟に対応しました。', '2025-01-22 16:25:40', '2025-01-22 16:25:40'),
(15, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 8, 'その活動を通じて、どのような結果や成果を上げたか記入してください。', '- プロジェクトの完了で、製品の市場投入期間を20%短縮しました。\n- チームの生産性を向上させ、月間売上が15%増加しました。\n- 新規顧客獲得数を前年同月比で30%増加させました。\n- コスト削減戦略により、年間経費を25%削減しました。\n- 顧客満足度調査で、顧客満足度を85%に向上させました。', '2025-01-22 16:25:43', '2025-01-22 16:25:43'),
(16, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 9, '「志望企業の正式名称」を記入してください。', '- 「志望企業の正式名称」についての具体的な知識を示す。\n- 業界トレンドや最近の革新を言及する。\n- なぜこの企業が特別なのかを際立たせる。\n- 企業の最近のプロジェクトや成果を取り上げる。\n- 自身のスキルがどう貢献できるか具体的に述べる。', '2025-01-22 16:25:46', '2025-01-22 16:25:46'),
(17, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 10, '志望している企業のＴＯＰページのアドレスを入力してください。', '企業の価値観や事業内容を理解し、志望動機に反映させるため、企業の「理念」や「事業内容」のページを詳しく調べてください。  \n- URL: 企業ウェブサイトの「理念」ページ  \n- URL: 企業ウェブサイトの「事業内容」ページ', '2025-01-22 16:25:48', '2025-01-22 16:25:48'),
(18, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 11, '志望企業の「ミッションや理念」をホームページから探してきて記入してください。', '- 「私たちの使命は世界をより良い場所にする革新的なソリューションを提供することです。」\n- 「私たちは持続可能性を最優先し、未来の世代により良い地球を残すことを目指します。」\n- 「お客様第一主義で、最高品質の商品とサービスを提供します。」', '2025-01-22 16:25:51', '2025-01-22 16:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generated_results`
--

CREATE TABLE `generated_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) NOT NULL,
  `openai_result` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generated_results`
--

INSERT INTO `generated_results` (`id`, `userId`, `openai_result`, `created_at`, `updated_at`) VALUES
(1, '6', 'This dataset is a JSON object representing a record, possibly from a survey or questionnaire, filled out by a user. Below is the explanation of its components:\n\n- **userId**: `1` - This is likely the identifier for the user who filled out the survey.\n  \n- **Question_1**: `\"\\u5ba2\\u89b3\\u8996\\u70b9\"` - This is Unicode encoded text, representing the Japanese phrase \"客観視点\" which translates to \"objective viewpoint\" or \"perspective\".\n\n- **Question_2**: `\"\\u67d4\\u8edf\\u6027\"` - This is another piece of Unicode encoded text representing the Japanese word \"柔軟性\" which translates to \"flexibility\".\n\n- **Question_3** through **Question_10**: Each is recorded with various English text entries like \"QWEWQ,\" \"TEST,\" and \"TEst\". These values could represent answers to survey questions or placeholders.\n\n- **updated_at**: `\"2025-01-22T19:31:19.000000Z\"` - The timestamp of when the entry was last updated, formatted in ISO 8601 format. It reveals that the record was updated on January 22, 2025.\n\n- **created_at**: `\"2025-01-22T19:31:19.000000Z\"` - The timestamp of when the entry was created. In this case, it matches the updated_at timestamp, suggesting this entry was possibly created and not subsequently modified.\n\n- **id**: `6` - This might be the unique identifier for this specific entry within the dataset.\n\nOverall, the data appears to be a user\'s responses to a set of questions in a survey, where the first two questions are related to perspectives (objective view and flexibility in Japanese), and the rest could either be additional responses or placeholders. The precise meaning and significance of the responses cannot be fully discerned without additional context about what each question pertains to.', '2025-01-22 11:31:27', '2025-01-22 11:31:27'),
(2, '7', 'This data appears to be a JSON object containing the responses to various questions in a survey or form. Here\'s a breakdown of the fields in this data:\n\n1. `\"userId\":null` - This indicates that there is no user ID associated with this entry. This could either mean the user who submitted this survey wished to remain anonymous, or the ID was not recorded.\n\n2. `\"Question_1\":\"コミュニケーション能力\"` - This is the response to the first question. The response is in Japanese, translating to \"Communication skills.\"\n\n3. `\"Question_2\":\"計画性\"` - This is the response to the second question, also in Japanese, translating to \"Planning.\"\n\n4. `\"Question_3\":\"TQWEQW\"` - The response to the third question, which appears to be a random string, likely coded or anonymized data.\n\n5. `\"Question_4\":\"QWEWQ\"` - Similar to Question 3, this is the response to the fourth question and also appears coded.\n\n6. `\"Question_5\":\"EWTEWRQWE\"` - The response to the fifth question, yet another likely coded or obfuscated entry.\n\n7. `\"Question_6\":\"QWEWQEWQ\"` - Response to the sixth question, also follows a coded pattern.\n\n8. `\"Question_7\":\"ADSADAS\"` - The response given for the seventh question appears to be a random string.\n\n9. `\"Question_8\":\"TRETRE\"` - An entry for the eighth question, again with coded or random value.\n\n10. `\"Question_9\":\"QWEQW\"` - The ninth question\'s response matches the pattern seen with other coded entries.\n\n11. `\"Question_10\":\"QWEQW\"` - The response to the tenth question, same as Question 9.\n\n12. `\"Question_11\":\"QWSADAS\"` - The eleventh question\'s response follows the sequence of using what appears to be coded data or identifiers.\n\n13. `\"updated_at\":\"2025-01-22T20:38:05.000000Z\"` - This indicates the timestamp when this record was last updated, showing a future date (January 22, 2025, at 20:38:05 in UTC).\n\n14. `\"created_at\":\"2025-01-22T20:38:05.000000Z\"` - This indicates the timestamp when the record was initially created, matching the update time and date.\n\n15. `\"id\":7` - This represents the unique identifier for this specific record within the dataset.\n\nOverall, the data suggests that entries are possibly anonymized or encoded responses to questions in a survey or study, mixing both identified labels and coded entries. The future timestamps imply an example or pre-loaded data set not linked to current events up through my training data period.', '2025-01-22 12:38:17', '2025-01-22 12:38:17'),
(3, '8', 'This data seems to be a JSON object representing some structured information. Here\'s an explanation of its elements:\n\n1. **\"userId\": null** - This suggests that there is a field for a user ID, but currently, no user ID is assigned. This could imply it\'s either missing or intentionally left blank.\n\n2. **\"Question_1\": \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\"** - This is Unicode that translates to \"コミュニケーション能力\" in Japanese, which means \"Communication Ability.\"\n\n3. **\"Question_2\": \"\\u884c\\u52d5\\u529b\"** - This is another Unicode string that translates to \"行動力\" in Japanese, meaning \"Action Power\" or \"Ability to Act.\"\n\n4. **\"Question_3\": \"21312\"** and other similar fields (\"Question_5\", \"Question_6\", etc.) - These fields contain numeric or alphanumeric strings, which could represent responses or codes linked to questions or categories.\n\n5. **\"Question_4\": \"wqeqw\"** and fields like \"Question_7\", \"Question_8\", etc. - These contain miscellaneous text or string values that could represent user inputs, names, or codes, the meaning of which is not clear without additional context.\n\n6. **\"updated_at\" and \"created_at\"** - Both fields have the same timestamp: \"2025-01-22T20:39:32.000000Z.\" This indicates that the data was created and last updated at the same time, suggesting it might have been entered manually or imported at that moment.\n\n7. **\"id\": 8** - This is the identifier for this entry, suggesting it\'s part of a collection or database where entries are indexed or numbered.\n\nOverall, the data appears to be a questionnaire or form response stored in a database, with fields in different languages and possibly involving both numeric scores and text answers. However, without more context, the exact purpose or details behind each answer remain speculative.', '2025-01-22 12:39:41', '2025-01-22 12:39:41'),
(4, '9', 'This data appears to represent a record in a database, possibly from a survey or questionnaire system. Here is a breakdown of the fields:\n\n- **userId:** This field is `null`, suggesting that the user who provided this response is either anonymous or not linked to a specific user account in the system.\n\n- **Question_1:** \"\\u5ba2\\u89b3\\u8996\\u70b9\" translates to \"客観視点\" in Japanese, which means \"objective viewpoint\" or \"perspective.\"\n\n- **Question_2:** \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\" translates to \"コミュニケーション能力\" in Japanese, which means \"communication skills.\"\n\n- **Question_3 to Question_11:** These fields contain various strings that do not seem to correspond to any specific language or recognizable pattern. They could be entries from an open-ended response section or encoded in some format that requires additional context to interpret.\n\n- **updated_at and created_at:** Both fields show the timestamp \"2025-01-22T20:41:37.000000Z\", indicating that the record was created and last updated at this particular date and time in the future (January 22, 2025, at 20:41:37 UTC).\n\n- **id:** The value `9` likely represents the unique identifier for this particular record in the database. \n\nOverall, this data appears to be a snapshot of a user\'s responses to a set of questions, possibly part of a survey or feedback form, with some metadata such as creation and update timestamps. The translations suggest that the questionnaire might be related to skills or perspectives.', '2025-01-22 12:41:42', '2025-01-22 12:41:42'),
(5, '10', 'The data appears to represent a record from a database or survey form submission. Here is the breakdown of each component within the JSON object:\n\n- `userId`: This is set to `null`, which indicates that there is no user ID associated with this record. This could mean that the user\'s identity is anonymous or not recorded in this context.\n\n- `Question_1`: \"\\u8ab2\\u984c\\u8a8d\\u8b58\\u529b\" is a Unicode-encoded string, which translates to \"課題認識力\" in Chinese characters, often meaning \"problem identification capability.\"\n\n- `Question_2`: \"\\u5371\\u6a5f\\u7ba1\\u7406\\u80fd\\u529b\" translates to \"危機管理能力\" in Chinese characters, meaning \"crisis management ability.\"\n\n- `Question_3` to `Question_11`: These fields contain various alphanumeric strings (e.g., \"qweqw,\" \"12321,\" \"dsfgdsf\") that likely represent responses or input from the user for corresponding questions. The content does not suggest a clear meaning and could be placeholder text, coded responses, or possibly data input errors.\n\n- `updated_at` and `created_at`: Both timestamps indicate when the record was created and last updated. In this case, both occurred on January 22, 2025, at 20:44:38 UTC.\n\n- `id`: This is set to 10, suggesting that this record is the 10th entry in the dataset or table.\n\nOverall, the data seems to represent a user\'s input related to a survey or assessment form. The two translated question titles suggest it might evaluate capabilities around problem-solving and crisis management, while the remaining questions have seemingly random or non-descriptive responses. The record\'s `userId` being `null` could mean that it is recorded without directly linking to any specific user or that it was an intentional anonymization.', '2025-01-22 12:44:47', '2025-01-22 12:44:47'),
(6, '11', 'This data appears to be a JSON object representing a record or an entry, likely from a database. Here\'s a breakdown of the individual components:\n\n1. `userId`: This key has a value of `null`. It is possible that this field is meant to associate a user with this record, but currently, no user ID is assigned.\n\n2. `Question_1` and `Question_2`: Both have the same value, which appears to be Japanese characters: \"コミュニケーション能力\". This translates to \"communication ability\" in English. It suggests that these fields might be testing or measuring communication skills or abilities.\n\n3. `Question_3` to `Question_11`: These fields contain strings of characters that do not form recognizable words. They could be placeholders, codes, or answers recorded in response to some questions or surveys. The actual meaning might be context-specific or might require additional information to interpret.\n\n4. `updated_at`: A timestamp showing when the record was last updated. The value \"2025-01-22T20:47:25.000000Z\" indicates this happened in the future from the perspective of the last training data date, suggesting a forward-looking timestamp.\n\n5. `created_at`: A timestamp indicating when the record was created, identical to the `updated_at` timestamp, meaning the record was likely created and promptly updated at the same moment.\n\n6. `id`: This is the identifier for the record, set to 11, which likely uniquely distinguishes it from other records in a collection or database.\n\nOverall, this JSON object represents some structured input or recorded/test data with placeholders or coded entries in some fields, likely to be used within a digital system or database for organizing user inputs associated with communication skills evaluation or a similar dataset.', '2025-01-22 12:47:32', '2025-01-22 12:47:32'),
(7, '12', 'This data represents a JSON object that includes various fields, likely from a survey or questionnaire. Here\'s a breakdown of what each part represents:\n\n1. **userId:** The value is null, indicating that the user identification is not provided or is unknown.\n\n2. **Question_1:** The response is in Unicode and translates to \"行動力\" which means \"action\" or \"initiative\" in Japanese.\n\n3. **Question_2:** The response is in Unicode and translates to \"客観視点\" which means \"objective viewpoint\" in Japanese.\n\n4. **Question_3 to Question_11:** These fields contain strings like \"qwewq\", \"qweqw\", etc. These appear to be placeholder or arbitrary string values, possibly used for testing or anonymization purposes.\n\n5. **Question_7:** The value is null, suggesting that there was no response or the question was skipped.\n\n6. **updated_at and created_at:** Both fields have the same timestamp \"2025-01-22T21:05:38.000000Z\", indicating the date and time when this data entry was created and last updated in the database. The timestamp follows the ISO 8601 format.\n\n7. **id:** The value is 12, which likely serves as a unique identifier for this entry in a database.\n\nOverall, this data appears to be a partial record from a questionnaire or survey with some responses anonymized or redacted, possibly for future analysis or review.', '2025-01-22 13:05:47', '2025-01-22 13:05:47'),
(8, '13', 'This data record appears to be part of a survey or questionnaire form submission associated with a user identified by the ID \"U74bc9388db32ce74b3e35e88ea53f997\". Here\'s a breakdown of the information present:\n\n- **userId**: This is a unique identifier for the user who submitted the form.\n- **Question_1**: The response is \"交涉力\", which translates to \"negotiation skills\" in English.\n- **Question_2**: The response is \"好奇心\", which translates to \"curiosity\" in English.\n- **Questions 3-11**: These responses are a mixture of alphanumeric strings like \"QWEQW\", \"ASDSA\", \"12321\", etc., which might represent coded or non-standard responses. These could potentially be user-specific codes, placeholders, or data requiring further processing. Without additional context, their specific meaning is unclear.\n- **updated_at** and **created_at**: These timestamps indicate that the form was both created and last updated on January 22, 2025, at 21:09:02 UTC. This suggests either that the information was submitted and processed instantly or that it is part of a static data entry.\n- **id**: The unique identifier for this particular record in the database is \"13\".\n\nOverall, this dataset seems to reflect a structured capture of user responses to a series of questions, some of which are in Chinese while others are alphanumeric placeholders. The specific purpose or context of these questions and responses is not detailed in the data provided.', '2025-01-22 13:09:10', '2025-01-22 13:09:10'),
(9, 'U74bc9388db32ce74b3e35e88ea53f997', 'The data provided seems to be a JSON object containing information related to a user\'s responses to a set of questions, along with metadata regarding the record itself. Here\'s an explanation of each component of the data:\n\n- `\"userId\":\"U74bc9388db32ce74b3e35e88ea53f997\"`: This is a unique identifier for the user associated with this record.\n\n- `\"Question_1\":\"\\u884c\\u52d5\\u529b\"`: The response to \"Question 1\" is in Unicode character format, which translates to \"行动力\" in Chinese, meaning \"action power\" or \"ability to act.\"\n\n- `\"Question_2\":\"\\u72b6\\u6cc1\\u5bfe\\u5fdc\\u80fd\\u529b\"`: The response to \"Question 2\" is also in Unicode and translates to \"状況対応能力\" in Chinese, meaning \"ability to respond to situations.\"\n\n- `\"Question_3\":\"QWEWQ\"`, `\"Question_4\":\"QWEQW\"`, `\"Question_5\":\"ASDSA\"`, `\"Question_6\":\"ASDSA\"`, `\"Question_7\":\"QWEQW\"`, `\"Question_8\":\"QWEQW\"`, `\"Question_9\":\"ASDSA\"`, `\"Question_10\":\"QWEQW\"`, `\"Question_11\":\"ASDSA\"`: These are responses to questions 3 through 11. The responses appear to be non-descriptive, possibly placeholder text or anonymized data.\n\n- `\"updated_at\":\"2025-01-22T21:10:28.000000Z\"`: This indicates the date and time when the record was last updated. The format used is the ISO 8601 standard, representing January 22, 2025.\n\n- `\"created_at\":\"2025-01-22T21:10:28.000000Z\"`: This indicates the date and time when the record was initially created, also using the ISO 8601 format, which is the same as the updated timestamp.\n\n- `\"id\":14`: This is likely a unique identifier for this specific record within a database or dataset.\n\nOverall, the data seems to be part of a survey or questionnaire setup where a user provides responses to a set of questions. The responses are recorded along with timestamps and identifiers, which can be used for tracking or analysis purposes.', '2025-01-22 13:10:38', '2025-01-22 13:10:38'),
(10, 'U74bc9388db32ce74b3e35e88ea53f997', 'This dataset appears to be a record of responses from a survey or questionnaire completed by a user. Here\'s a breakdown of the data:\n\n1. **userId**: This is a unique identifier for the user who completed the survey. In this case, the user ID is \"U74bc9388db32ce74b3e35e88ea53f997\".\n\n2. **Question_1 to Question_11**: These fields likely represent answers to individual questions in the survey. The responses include both Japanese text and placeholders like \"QWEQW\" and \"ASDSA\":\n\n   - **Question_1**: The response \"\\u884c\\u52d5\\u529b\" is a Unicode representation of the Japanese word \"行動力\", which means \"initiative\" or \"ability to take action\".\n   \n   - **Question_2**: The response \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\" is a Unicode representation of the Japanese phrase \"コミュニケーション能力\", which means \"communication skills\".\n\n   - **Question_3 to Question_11**: Include repeated sequences such as \"QWEQW\", \"ASDSA\", \"qwewq\". These seem to be placeholder or mock responses, possibly used for testing or anonymization purposes.\n\n3. **updated_at**: This timestamp \"2025-01-22T21:18:27.000000Z\" indicates when the record was last updated. The date is in the future relative to the current known date up to October 2023, which may imply a forward-looking test or placeholder date.\n\n4. **created_at**: This timestamp is the same as the \"updated_at\" timestamp, suggesting that the record was created and last updated at the same time.\n\n5. **id**: A numeric identifier for the record, in this case, 15, indicating its sequence in a database or dataset.\n\nOverall, this record is likely a sample from a database of survey responses, possibly used for analysis or testing purposes. The presence of both meaningful and placeholder responses suggests it may be a mix of real and test data.', '2025-01-22 13:18:38', '2025-01-22 13:18:38'),
(11, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object that contains information related to a user\'s responses to a series of questions and associated metadata. Here\'s a breakdown of each component:\n\n- `\"userId\":\"U74bc9388db32ce74b3e35e88ea53f997\"`: This is a unique identifier for the user. It appears as a hashed or encrypted string.\n\n- `\"Question_1\":\"\\u55b6\\u696d\\u77e5\\u8b58\"`: This is the response to the first question, encoded in Unicode format which translates to \"営業知識\" in Japanese, meaning \"Business Knowledge\".\n\n- `\"Question_2\":\"\\u55b6\\u696d\\u529b\"`: This is the response to the second question, encoded in Unicode format which translates to \"営業力\" in Japanese, meaning \"Business Power\" or \"Sales Ability\".\n\n- `\"Question_3\":\"QWEWQEWQ\"` to `\"Question_11\":\"qwewqesad\"`: These fields are likely responses to other questions. The content appears to be random strings, possibly placeholders or manually entered text by the user.\n\n- `\"updated_at\":\"2025-01-22T21:25:16.000000Z\"`: This timestamp indicates when the data was last updated. It is in ISO 8601 date and time format, suggesting that the data was last updated on January 22, 2025.\n\n- `\"created_at\":\"2025-01-22T21:25:16.000000Z\"`: This timestamp indicates when the data was created, in the same format as above. It matches the update timestamp, suggesting the data was created and updated at the same instance.\n\n- `\"id\":16`: This likely represents a unique identifier for this particular entry in the data storage system, possibly a database.\n\nOverall, this JSON object might be part of a survey or questionnaire system where users submit their responses, and this particular entry captures one user\'s answers and metadata.', '2025-01-22 13:25:25', '2025-01-22 13:25:25'),
(12, 'U74bc9388db32ce74b3e35e88ea53f997', 'This dataset represents a record of a user\'s responses to a questionnaire. Here\'s a breakdown of each element in the JSON object:\n\n1. **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier for the user who completed the questionnaire. It likely serves as a way to track individual responses or associate them with a specific user.\n\n2. **Question_1**: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\" - The response to Question 1 is in Japanese characters, which translates to \"Communication Ability\". This suggests that the questionnaire may be assessing various skills or competencies, with \"Communication Ability\" being one of the topics.\n\n3. **Question_2**: \"\\u884c\\u52d5\\u529b\" - The response to Question 2 also appears in Japanese, translating to \"Action Power\" or \"Motivation\". This may refer to the respondent\'s ability or willingness to take initiative or act.\n\n4. **Questions 3-11**: The responses to these questions, such as \"QWEQWEQW\", \"ASDSADAS\", \"qweqw\", \"SDAS\", \"ESAD\", etc., are likely placeholder or anonymized text entries. These responses do not provide meaningful information without further context, such as what these codes or abbreviations might stand for in the context of the questionnaire.\n\n5. **updated_at** and **created_at**: \"2025-01-22T21:26:41.000000Z\" - Both fields contain the same timestamp, indicating that the record was created and last updated on January 22, 2025, at 21:26:41 UTC. This suggests that the record might have been created and finalized in one session without subsequent modifications.\n\n6. **id**: 17 - This numerical ID likely represents the record number or a unique identifier within the dataset, suggesting this is the 17th entry in the system or database.\n\nOverall, this dataset likely represents user responses to a survey or evaluation focused on skills or characteristics, using both meaningful descriptors (for some questions in Japanese) and placeholders or coded responses for other items.', '2025-01-22 13:26:50', '2025-01-22 13:26:50'),
(13, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing a collection of responses to a series of survey or questionnaire questions, identified by a unique user ID. Here\'s a breakdown of the components:\n\n- **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier for the user who provided these responses.\n\n- **Question_1**: \"客観視点\" - This is a Japanese term for \'objective viewpoint\'.\n\n- **Question_2**: \"柔軟性\" - This is a Japanese term for \'flexibility\'.\n\n- **Question_3 to Question_11**: Each of these fields seems to have abbreviated or encoded answers such as \"QWEQW\", \"ASDSA\", \"SCXZC\", and so on. These might represent responses to specific questions or could be placeholders or anonymized for privacy.\n\n- **updated_at**: \"2025-01-22T21:28:33.000000Z\" - This indicates the date and time when the data was last updated, formatted in ISO 8601, suggesting the record was last modified on January 22, 2025.\n\n- **created_at**: \"2025-01-22T21:28:33.000000Z\" - This shows the date and time when the data entry was originally created, which is identical to the updated_at timestamp, indicating it hasn\'t been modified since creation.\n\n- **id**: 18 - This could be a unique identifier for this particular set of responses in a database.\n\nThe data suggests a structured format likely used in storing survey answers, with two responses being written in Japanese and the rest in encoded or shorthand form, possibly indicating a need for further decoding or matching with a reference key to determine the meaning of each response.', '2025-01-22 13:28:44', '2025-01-22 13:28:44'),
(14, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing responses to a series of questions, along with some metadata. Here\'s a breakdown of the elements:\n\n- **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - A unique identifier for the user who provided the responses.\n\n- **Question_1**: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\" - This is a string in Unicode that translates to \"コミュニケーション能力\" in Japanese, which means \"communication skills.\"\n\n- **Question_2**: \"\\u67d4\\u8edf\\u6027\" - Another Unicode string representing \"柔軟性\" in Japanese, meaning \"flexibility.\"\n\n- **Questions 3 to 11**: These appear to contain responses that are either non-descriptive strings or possibly codes (\"qweqw\", \"QWEQW\", \"SADAS\", \"WQEQW\", \"ZXCZX\"). Without additional context, it\'s unclear what these responses are meant to signify.\n\n- **updated_at** & **created_at**: \"2025-01-22T21:44:13.000000Z\" - These timestamps indicate when the data was created and last updated. Both timestamps are set for January 22, 2025, suggesting the data was created and updated simultaneously or has not been updated since creation.\n\n- **id**: 19 - This is likely an internal identifier for this specific set of responses.\n\nOverall, this JSON structure suggests a form or survey filled out by a user, where the first two questions relate to skills or attributes (communication skills and flexibility). The remaining questions may correspond to other unspecified areas. The context or system processing this data would require further information to fully interpret the responses, especially for questions 3 through 11.', '2025-01-22 13:44:26', '2025-01-22 13:44:26'),
(15, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing a record in a database or a survey/questionnaire response. It includes the following key-value pairs:\n\n1. **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\"\n   - This is a unique identifier for the user who provided the responses.\n\n2. **Question_1**: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\"\n   - This translates from Japanese to \"communication ability\". It likely represents the user\'s response or assessment in relation to communication skills.\n\n3. **Question_2**: \"\\u597d\\u5947\\u5fc3\"\n   - This translates from Japanese to \"curiosity\". This indicates the user\'s response about their level of curiosity.\n\n4. **Question_3** to **Question_11**: These questions have alphanumeric responses such as \"QWEQW\", \"ASDQWE\", etc. These responses appear to be placeholders or encoded responses that need further context for meaningful interpretation.\n\n5. **updated_at**: \"2025-01-22T21:45:29.000000Z\"\n   - The timestamp indicating when this record was last updated.\n\n6. **created_at**: \"2025-01-22T21:45:29.000000Z\"\n   - The timestamp marking when this record was created. It shows they are identical, suggesting the data hasn\'t been modified since creation.\n\n7. **id**: 20\n   - A unique identifier for this record within the dataset or database.\n\nOverall, this looks like a respondent\'s answers to a series of questions, with a primary focus on communication ability and curiosity based on the two translated Japanese phrases, with other responses likely meant to capture additional data or attributes. The timestamps provide information regarding the data\'s currency.', '2025-01-22 13:45:39', '2025-01-22 13:45:39'),
(16, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing a record in a database, possibly related to a survey or questionnaire. Here\'s a breakdown of each component:\n\n1. **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\"\n   - This is likely a unique identifier associated with a user who submitted the survey or questionnaire.\n\n2. **Questions and Responses**:\n   - **Question_1**: \"\\u5ba2\\u89b3\\u8996\\u70b9\" translates from Japanese to \"objective viewpoint.\"\n   - **Question_2**: \"\\u67d4\\u8edf\\u6027\" translates from Japanese to \"flexibility.\"\n   - **Question_3 to Question_11**: These contain responses, but the meaning isn\'t clear without context. They seem to be placeholder text such as \"QWEWQ\" or \"ASDSA\", which might indicate mock data or test responses unless they have specific meanings in a given context.\n\n3. **Timestamps**:\n   - **updated_at**: \"2025-01-22T21:48:02.000000Z\"\n   - **created_at**: \"2025-01-22T21:48:02.000000Z\"\n   - Both fields indicate the record was created and last updated on January 22, 2025, at the exact same time, which suggests this entry hasn\'t been modified after its creation.\n\n4. **id**: 21\n   - This is likely the unique record identifier within a database.\n\nOverall, the object could be part of a larger database intended to collect and store responses to a questionnaire or survey, possibly in a multilingual context. However, the result and significance of the answers given in fields Question_3 to Question_11 would require additional information for accurate interpretation.', '2025-01-22 13:48:10', '2025-01-22 13:48:10'),
(17, 'U74bc9388db32ce74b3e35e88ea53f997', 'This dataset appears to be a record of a user\'s responses or attributes, potentially related to a questionnaire or survey. Here\'s a breakdown of the data:\n\n- `userId`: This is a unique identifier for the user, denoted as \"U74bc9388db32ce74b3e35e88ea53f997\". It is most likely generated to ensure user anonymity and uniqueness in the database.\n\n- `Question_1`: The response is given in Japanese as \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\", which translates to \"Communication Ability\".\n\n- `Question_2`: Another response in Japanese is \"\\u597d\\u5947\\u5fc3\", which translates to \"Curiosity\".\n\n- `Question_3` to `Question_11`: These fields contain what appears to be coded or placeholder text such as \"QWEWQ\", \"ASDSA\", \"QWEQW\", etc. These responses might be anonymized data, representing specific answers or choices on a questionnaire. Without context, the meanings of these codes are unclear.\n\n- `updated_at`: This field denotes the timestamp of the last update to this record, which is \"2025-01-22T21:49:48.000000Z\".\n\n- `created_at`: This field denotes the timestamp of when this record was originally created, which is the same as `updated_at`, likely indicating that the data entry and the last modification occurred simultaneously.\n\n- `id`: An integer identifier for this specific entry in the dataset, which is 22.\n\nOverall, this dataset seems to be part of a larger collection concerning users and their responses to a survey or series of questions, with some responses in Japanese and others potentially obscured by coded placeholders.', '2025-01-22 13:49:54', '2025-01-22 13:49:54'),
(18, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data is very likely a JSON object that contains information about a specific user\'s response to a series of questions or prompts. Here\'s a breakdown of the structure:\n\n- `\"userId\":\"U74bc9388db32ce74b3e35e88ea53f997\"`: This is a unique identifier for the user, likely used to ensure that responses can be tracked back to this specific individual.\n\n- `\"Question_1\"` to `\"Question_11\"`: These keys represent the user\'s answers to eleven questions, where:\n  - `\"Question_1\"` and `\"Question_2\"` have the value `コミュニケーション能力`, which translates from Japanese to \"communication ability\" or \"communication skills.\" This suggests that these questions are potentially about assessing the user\'s communication-related skills or perspectives.\n  - `\"Question_3\"` to `\"Question_11\"`: These questions seem to have various alphanumeric responses (e.g., \"QWEQW\", \"ASDSA\", \"ZXCZX\"). The nature of these responses is unclear but might represent coded answers, or placeholders, or they may originate from a specific survey or application context that is not revealed in the data.\n\n- `\"updated_at\"` and `\"created_at\"`: Both are timestamps in ISO 8601 format, indicating when this particular record was created or last updated in the system. Both timestamps are identical, suggesting this was the initial creation time.\n\n- `\"id\":23`: This likely represents a unique identifier for the record itself within a database or a system.\n\nOverall, while there is some clarity regarding the structure of the data and purpose of certain fields, the actual content of responses for questions 3-11 might require additional context to be fully understood.', '2025-01-22 13:50:19', '2025-01-22 13:50:19'),
(19, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object that stores responses from a user survey or questionnaire. Here\'s a breakdown of the key components:\n\n1. **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier for the user who provided the responses.\n\n2. **Question_1 and Question_2**: These responses are in Unicode, and when decoded, they translate to Chinese characters:\n   - \"\\u884c\\u52d5\\u529b\" translates to \"行动力\" which means \"action capability\" or \"motivation\".\n   - \"\\u8a08\\u753b\\u6027\" translates to \"计划性\" which means \"planning\" or \"planfulness\".\n\n3. **Question_3 to Question_11**: These responses appear to be strings that may have been typed by the user; they consist mostly of a mix of capital and lowercase letters, which might not have a specific meaning unless part of a coding or categorization system known to the surveyor. \n\n4. **updated_at** and **created_at**: Both are timestamps indicating when the entry was updated and created. They are in ISO 8601 format, set to January 22nd, 2025 at 21:53:51 UTC. Since this date is in the future (based on your training data availability), it could be either speculative data or sample data used for testing purposes.\n\n5. **id**: This is the identifier for this specific entry in the database or dataset, indicating it as entry number 24.\n\nOverall, this JSON object seems to store the responses to a set of questions, with a mix of meaningful answers in a foreign language and placeholder or arbitrary strings for other responses. The timestamps and ID help in data management and identification within a larger data storage system.', '2025-01-22 13:54:01', '2025-01-22 13:54:01'),
(20, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be an entry from a database, likely recording responses from a user to a set of questions or survey. Here is a breakdown of the fields:\n\n- \"userId\": \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier for the user who provided the responses.\n- \"Question_1\": \"\\u5ba2\\u89b3\\u8996\\u70b9\" - This is a response to the first question, which when decoded from Unicode, translates to \"客観視点\" meaning \"objective point of view\" in Japanese.\n- \"Question_2\": \"\\u60c5\\u5831\\u53ce\\u96c6\\u80fd\\u529b\" - This response translates to \"情報収集能力\" meaning \"information-gathering ability\" in Japanese.\n- \"Question_3\" through \"Question_11\": Various alphanumeric strings (e.g., \"QWEQWEQW\", \"WQEQW\", etc.) which could be user-entered text responses or codes relevant to the context of the questions.\n- \"updated_at\": \"2025-01-22T21:56:30.000000Z\" - The date and time when this record was last updated, in ISO 8601 format.\n- \"created_at\": \"2025-01-22T21:56:30.000000Z\" - The date and time when this record was created, also in ISO 8601 format. It matches the \"updated_at\" field, suggesting this was the initial entry without further modifications.\n- \"id\": 25 - A unique identifier for this specific record in the database.\n\nThe fields \"Question_3\" to \"Question_11\" contain data that does not seem to be encoded or readily interpretable without additional context. These could represent predefined codes or encrypted text, depending on the system\'s design where this data is being used.', '2025-01-22 13:56:39', '2025-01-22 13:56:39'),
(21, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data is a JSON object containing information about a survey or questionnaire filled out by a user with a specific `userId`. The data consists of responses to 11 questions, labeled from `Question_1` to `Question_11`. Each question has a response that is likely represented as a string, with some encoded in Unicode and others in regular text strings:\n\n- `Question_1` has a Unicode string that translates to \"客観視点\" in Japanese, meaning \"objective viewpoint\" or \"objective perspective\".\n- `Question_2` has a Unicode string that translates to \"コミュニケーション能力\" in Japanese, meaning \"communication ability\" or \"communication skills\".\n- `Question_3` to `Question_11` seem to have placeholder or coded responses (\"QWEQW\", \"ASDSA\", \"ASDAS\", \"QWEWQ\"), which could be arbitrary strings or codes representing specific responses.\n\nThe record has metadata fields:\n- `userId`: a unique identifier for the user filling out the survey.\n- `updated_at` and `created_at` both indicate when the data was recorded and they suggest it was created and updated on January 22, 2025, at 22:00:30 (UTC).\n- `id`: a unique identifier for this particular record in the database, in this case, it\'s 28.\n\nNote: Since the current available data stops at October 2023, the 2025 date is hypothetical and future-dated based on the context provided.', '2025-01-22 14:00:38', '2025-01-22 14:00:38'),
(22, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing a survey or questionnaire response. Here\'s a breakdown of the key elements:\n\n1. `userId`: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier for the user who submitted the response.\n\n2. `Question_1`: \"\\u5ba2\\u89b3\\u8996\\u70b9\" - This is a response to the first question in the form of a Unicode character string, which translates to \"objective viewpoint\" in Japanese.\n\n3. `Question_2`: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\" - This is a response to the second question, also in a Unicode string, which translates to \"communication ability\" in Japanese.\n\n4. `Question_3` to `Question_11`: Responses to these questions seem to be placeholders, as they contain repetitive strings like \"QWEQW\" and \"ASDSA\" which don\'t provide meaningful information.\n\n5. `updated_at` and `created_at`: \"2025-01-22T22:01:25.000000Z\" - These timestamps indicate when the response was created and last updated, suggesting this data was recorded on January 22, 2025.\n\n6. `id`: 29 - This could be a unique identifier for the survey response itself within a database.\n\nOverall, this data is likely extracted from a system tracking user responses to a set of questions, where the crucial details are in a mix of English placeholder text and Japanese-translated Unicode strings, depicting different capabilities or attributes.', '2025-01-22 14:01:32', '2025-01-22 14:01:32'),
(23, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data represents a record of responses to a set of questions completed by a user. Here\'s a detailed explanation of the data fields:\n\n1. **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" \n   - This is a unique identifier for the user who submitted the responses. It helps in distinguishing the data of one user from another.\n\n2. **Question_1 & Question_2**: \"\\u5ba2\\u89b3\\u8996\\u70b9\" \n   - This is a Unicode escape sequence representing the text \"客観視点\", which translates to \"objective viewpoint\" in English. It indicates that the user\'s responses for these questions are the same and reflect this idea.\n\n3. **Question_3, Question_4, Question_5, Question_7, Question_9, Question_11**: \"QWEQW\" \n   - The responses for these questions are the same, noted as \"QWEQW\". This pattern likely represents a placeholder or the actual response given by the user.\n\n4. **Question_6 & Question_10**: \"ASDSA\" \n   - Similar to above, the user provided \"ASDSA\" as their response to these questions. This repetition could imply the user\'s preference or a repeated selection.\n\n5. **Question_8**: \"SDAS\"\n   - The response to this question is distinct from other patterns and is given as \"SDAS\". \n\n6. **updated_at & created_at**: \"2025-01-22T22:02:48.000000Z\"\n   - Both timestamps indicate when this record was created and last updated. The \"Z\" at the end denotes that the time is in the UTC time zone.\n\n7. **id**: 30\n   - This is likely the primary key of this record in a database, which provides a unique identifier for this particular set of responses.\n\nOverall, this data appears to be part of a survey or questionnaire where a user provided responses to 11 different questions, with an emphasis on certain repeating patterns and a couple of responses indicated in Japanese.', '2025-01-22 14:02:58', '2025-01-22 14:02:58'),
(24, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to represent a structured response set for a user with ID \"U74bc9388db32ce74b3e35e88ea53f997\". The data is organized into several key-value pairs, with each key representing a question or metadata, and each value representing the corresponding answer or information. Let\'s break it down:\n\n- `userId`: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is an identifier for the user who provided the responses.\n- `Question_1`: \"客観視点\" - This is the response to Question 1, and it translates from Japanese to \"objective viewpoint.\"\n- `Question_2`: \"交流力\" - This is the response to Question 2, translating from Japanese to \"communication skills.\"\n- `Question_3` to `Question_11`: These questions have responses that appear to be placeholders or coded values, with responses like \"WQEQW\" and \"ASDSA\".\n- `updated_at`: \"2025-01-22T22:43:02.000000Z\" - This is the timestamp indicating when the data was last updated, in ISO 8601 format.\n- `created_at`: \"2025-01-22T22:43:02.000000Z\" - This timestamp indicates when the data was initially created, also in ISO 8601 format.\n- `id`: 31 - This is likely an identifier for this particular set of responses.\n\nOverall, this dataset captures user responses to a series of questions, some of which may be subjective or based on personal assessment, such as communication skills or objective viewpoints. The values after the second question are somewhat unclear and may require context from the associated survey or questionnaire.', '2025-01-22 14:43:13', '2025-01-22 14:43:13'),
(25, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing a record, possibly from a database or a survey system. Here\'s a breakdown:\n\n- **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\"\n  - This is a unique identifier for the user associated with this record.\n\n- **Question_1**: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\"\n  - This is a Unicode-encoded string for a non-Latin script. When decoded, it reads as \"コミュニケーション能力,\" which is Japanese for \"Communication Ability.\"\n\n- **Question_2**: \"\\u4ea4\\u6e09\\u529b\"\n  - This is another Unicode-encoded string. It decodes to \"交渉力,\" which is Japanese for \"Negotiation Ability.\"\n\n- **Questions 3-11**:\n  - These fields seem to represent responses to survey questions labeled QWEQW, ASDAS, and XCZX. These values look like placeholder or test data rather than meaningful answers.\n\n- **updated_at**: \"2025-01-22T22:44:02.000000Z\"\n  - The record\'s latest update timestamp in Coordinated Universal Time (UTC).\n\n- **created_at**: \"2025-01-22T22:44:02.000000Z\"\n  - The creation timestamp of the record in UTC.\n\n- **id**: 32\n  - Likely a unique identifier for this specific record in the database.\n\nThe data could potentially be part of a system collecting responses to a survey or assessment related to communication and negotiation skills, with some missing data or placeholders in questions 3 to 11. The timestamps suggest it\'s a future record, indicating a placeholder or forecast data.', '2025-01-22 14:44:09', '2025-01-22 14:44:09'),
(26, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data represents a record or entry from a database or a data collection system. The fields included in the data are:\n\n- `userId`: A unique identifier for a user, given as \"U74bc9388db32ce74b3e35e88ea53f997\".\n\n- `Question_1` and `Question_2`: These fields contain text in Unicode encoding representing Chinese characters. When decoded, `Question_1` translates to \"課題認識力\" (which means \"problem recognition ability\") and `Question_2` translates to \"協調性\" (which means \"coordination\").\n\n- `Question_3` to `Question_11`: These fields seem to contain placeholder or scrambled text data, such as \"QWEWQEQW\", \"ASDASDAS\", and \"ZXCZXCZ\". These could serve as example answers, placeholders, or coded responses.\n\n- `updated_at` and `created_at`: Both fields are timestamps indicating when the record was last updated and when it was created, respectively. They both show the date and time as \"2025-01-22T22:51:56.000000Z\", suggesting that the record was created on January 22, 2025, at 22:51:56 UTC.\n\n- `id`: A likely auto-incremented integer field serving as a unique identifier for the record in the database, set to the value 33.\n\nNote: Although specified for a date in the future according to current knowledge (as of 2023), the date values suggest a system entry or record intended for logging or tracking purposes in January 2025.', '2025-01-22 14:52:03', '2025-01-22 14:52:03'),
(27, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data is a JSON object that appears to represent answers to a questionnaire or survey filled out by a user, identified by a unique `userId`: \"U74bc9388db32ce74b3e35e88ea53f997\". Here is a breakdown of the data:\n\n1. `Question_1`: The value is in Japanese, and it translates to \"Communication Ability\" (コミュニケーション能力).\n2. `Question_2`: This is also in Japanese, translating to \"Situational Response Ability\" (状況対応能力).\n3. `Question_3` to `Question_11`: These are filled with various strings that appear to be placeholders or randomly typed keys (such as \"QEQWEWQ\", \"ASDSA\", \"EWTEWR\", etc.), with one being a numeric string: \"12321\".\n\nThe object includes metadata such as:\n- `updated_at`: A timestamp indicating the last update to the data, which is \"2025-01-22T22:55:14.000000Z\".\n- `created_at`: A timestamp indicating when the data was initially created, which is the same as when it was last updated: \"2025-01-22T22:55:14.000000Z\".\n- `id`: A numeric identifier of this particular entry, which is \"34\".\n\nThe JSON object seems structured as a database entry for storing questionnaire or survey responses. The placeholders for responses might need to be filled with actual data for meaningful interpretation.', '2025-01-22 14:55:19', '2025-01-22 14:55:19'),
(28, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object containing information related to a user\'s responses to a series of questions. Here\'s a breakdown of the data:\n\n1. `\"userId\":\"U74bc9388db32ce74b3e35e88ea53f997\"`: This seems to be a unique identifier for the user who provided the responses.\n\n2. `\"Question_1\":\"\\u5fdc\\u7528\\u529b\"`: The response to Question 1, which is in Unicode. When decoded, it translates to \"応用力,\" which is Japanese for \"application ability\" or \"applied skills.\"\n\n3. `\"Question_2\":\"\\u55b6\\u696d\\u529b\"`: The response to Question 2, also in Unicode. It translates to \"営業力,\" which is Japanese for \"business ability\" or \"business acumen.\"\n\n4. `\"Question_3\":\"QWEQW\"`, `\"Question_4\":\"ASDSA\"`, and so forth up to `\"Question_11\":\"QWEW\"`: These appear to be responses to subsequent questions, but the responses seem to be nonsensical or coded strings that don\'t have obvious meaning (they appear as sequences of letters).\n\n5. `\"updated_at\":\"2025-01-22T22:59:37.000000Z\"` and `\"created_at\":\"2025-01-22T22:59:37.000000Z\"`: These timestamps indicate when the data was created and last updated, both on January 22, 2025.\n\n6. `\"id\":35`: This is likely a unique identifier for this particular data entry or record in a database.\n\nOverall, this JSON object might represent survey or assessment results where some responses are in Japanese, and others might be codes or placeholder text. The presence of future dates (as per your training data timeline) suggests this data may be hypothetical or fabricated.', '2025-01-22 14:59:45', '2025-01-22 14:59:45');
INSERT INTO `generated_results` (`id`, `userId`, `openai_result`, `created_at`, `updated_at`) VALUES
(29, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object representing a record of responses or answers to a set of questions, associated with a user identified by the userId \"U74bc9388db32ce74b3e35e88ea53f997\". Here’s a breakdown of the data:\n\n- `\"userId\"`: This is a unique identifier for the user who provided the responses.\n\n- `\"Question_1\"` and `\"Question_2\"` contain text in what appears to be Japanese characters, with `\"Question_1\": \"営業知識\"` and `\"Question_2\": \"応用力\"` translating to \"Business Knowledge\" and \"Application Ability\" respectively.\n\n- `\"Question_3\"` to `\"Question_11\"`: These question fields contain strings that seem to be placeholders or coded answers, made up of characters that appear random (\'QWEQW\', \'ASDAS\', etc.).\n\n- `\"updated_at\"` and `\"created_at\"`: These fields record the timestamp of when this record was both created and last updated. Both timestamps are identical, suggesting that the record has not been modified since it was first created. The date and time recorded is January 22, 2025 at 23:19:43 in Coordinated Universal Time (UTC).\n\n- `\"id\"`: This is likely an internal identifier for the record, which is \'36\' in this case.\n\nOverall, the data structure suggests that it is part of a survey or questionnaire system where each user’s responses to a set of questions are logged with timestamps and unique identifiers, though the specific contents of most of the question fields aren\'t decipherable without additional context or data definitions.', '2025-01-22 15:19:50', '2025-01-22 15:19:50'),
(30, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a structured record in a database, possibly related to a survey or questionnaire filled out by a user identified with the ID \"U74bc9388db32ce74b3e35e88ea53f997\". Here is a detailed explanation of the fields:\n\n- **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier associated with the user who provided the responses to the questions. \n\n- **Question_1**: \"\\u55b6\\u696d\\u77e5\\u8b58\" - This is a Unicode representation of Japanese characters (営業知識), which translates to \"Business Knowledge\".\n\n- **Question_2**: \"\\u8ab2\\u984c\\u8a8d\\u8b58\\u529b\" - This is also in Japanese (課題認識力), translating to \"Problem Recognition Ability\".\n\n- **Question_3** to **Question_11**: These fields consist of strings that appear to be arbitrary or coded text such as \"qweQWEQW\", \"ASDASDAS\", etc. Without further context, it\'s unclear what these represent, but they could be encoded answers or placeholders for specific survey questions.\n\n- **updated_at** and **created_at**: Both are timestamps in ISO 8601 format (\"2025-01-22T23:20:03.000000Z\"). They indicate the date and time when this record was created and last updated, suggesting that the entry was made and last modified on January 22, 2025.\n\n- **id**: 37 - This is likely a primary key or a unique identifier for this particular record within the database.\n\nThe data suggests a record from a future date (2025), which may imply this is either a sample record for testing purposes or an unintended entry if such future data wasn\'t intended to be generated at the time of analysis. The content within the questions might need further decoding or context to determine their specific meanings or implications fully.', '2025-01-22 15:20:18', '2025-01-22 15:20:18'),
(31, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a record or an entry from a database, possibly related to a survey or questionnaire filled out by a user. Here\'s a breakdown of the structure and contents:\n\n- **userId**: This is a unique identifier for the user who filled out the questionnaire or survey. The value \"U74bc9388db32ce74b3e35e88ea53f997\" is likely a hashed or otherwise anonymized user ID.\n\n- **Question_1**: The response to the first question is \"\\u55b6\\u696d\\u77e5\\u8b58\", which is a Unicode representation translating to \"営業知識\" in Japanese. This translates to \"business knowledge\" in English.\n\n- **Question_2**: The response to the second question is \"\\u5fdc\\u7528\\u529b\", which translates to \"応用力\" in Japanese, meaning \"application ability\" or \"applied skills\" in English.\n\n- **Question_3** to **Question_11**: These contain various alphanumeric strings such as \"WQEQWEQW\", \"SADAS\", \"QWEQW\", \"ZXCZX\", \"ASDAS\", and \"QWEQWEQWEQW\". These could be codes, short responses, or placeholder text, but without context, the specific meaning is unclear.\n\n- **updated_at**: This indicates the date and time when this record was last updated, which is set as \"2025-01-22T23:34:44.000000Z\". The format follows the ISO 8601 standard for date-time representation in UTC (Coordinated Universal Time).\n\n- **created_at**: This field captures the date and time when the record was originally created. It is the same as the \"updated_at\" timestamp, suggesting there have been no subsequent updates to this entry since its creation.\n\n- **id**: A unique numeric identifier for this particular record in the database, in this case, it\'s 38.\n\nOverall, this data seems to be associated with user input or responses to a questionnaire or survey that involves some standard and possibly subjective questions (evident from the placeholder-like responses). The usage of Japanese and placeholder English strings suggests it could be part of a bilingual or multinational service platform.', '2025-01-22 15:34:54', '2025-01-22 15:34:54'),
(32, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object that includes information about a specific user response to a questionnaire or survey. Here is a detailed breakdown of the data fields:\n\n- **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is a unique identifier for the user who filled out the questionnaire or survey.\n\n- **Question_1**: \"\\u8a08\\u753b\\u6027\" - This field contains text encoded in Unicode. When decoded, it reads \"計画性\", which is Japanese for \"planning\" or \"planfulness\".\n\n- **Question_2**: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\" - This is also Unicode-encoded text. When decoded, it reads \"コミュニケーション能力\", which translates to \"communication ability\" in English.\n\n- **Question_3 to Question_5**: These fields (\"QWEWQEWQ\", \"QWEWQ\", \"WQEQW\") contain non-descriptive text that might represent user inputs or response codes that need to be interpreted within the context of the survey.\n\n- **Question_6**: null - This indicates either that no response was provided for this question or that it was intentionally left unanswered.\n\n- **Question_7 to Question_11**: The text (\"ASDSA\", \"SADZXC\", \"QWEQW\", \"ASDASD\", \"QWEWQEQW\") likely represents user-provided inputs similar to Questions 3 to 5. The meaning of these responses would depend on the context of the survey.\n\n- **updated_at**: \"2025-01-22T23:35:52.000000Z\" - This timestamp shows when the data was last updated. It is in ISO 8601 format, indicating January 22, 2025.\n\n- **created_at**: \"2025-01-22T23:35:52.000000Z\" - This timestamp indicates when the data entry was created, which is the same as the updated timestamp in this instance.\n\n- **id**: 39 - This is a unique identifier for this particular survey response or entry.\n\nOverall, this object seems to represent a single user\'s responses to a set of survey questions, with some responses in Japanese and others potentially representing unspecified codes or notes. The context of the survey (e.g., field formats, respondent instructions) would help clarify the responses.', '2025-01-22 15:36:16', '2025-01-22 15:36:16'),
(33, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data represents a record from a database or a structured file associated with a specific user\'s responses to a series of questions. Here is a breakdown of the data:\n\n- `userId`: This is a unique identifier for the user, represented by \"U74bc9388db32ce74b3e35e88ea53f997\".\n- `Question_1`: The response is coded in Unicode, corresponding to Japanese characters: \"営業知識\", which translates to \"business knowledge\".\n- `Question_2`: Another Unicode encoded response: \"気配り\", which translates to \"consideration\" or \"thoughtfulness\".\n- `Question_3` to `Question_11`: These consist of a series of alphanumeric responses like \"QWEQW\", \"ASDSAC\", \"QWESAD\", etc., which could either be answers or encoded information for other questions.\n- `updated_at` and `created_at`: Both indicate the timestamp when this record was created or last updated, which in this case, both are \"2025-01-22T23:37:11.000000Z\", showing that the entry was created and last updated on January 22, 2025, at 23:37:11 UTC.\n- `id`: This is likely a unique identifier for the record in the database, numbered as \"40\".\n\nThis record suggests that a user provided responses to a questionnaire or survey, with some questions formulated in Japanese and others potentially being placeholders or coded information. The timestamps indicate the record\'s entry and last modification at the same time, possibly during initial data entry.', '2025-01-22 15:37:17', '2025-01-22 15:37:17'),
(34, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data represents a record containing information about a user identified by the unique user ID \"U74bc9388db32ce74b3e35e88ea53f997\". The record includes a series of responses to questions labeled Question_1 through Question_11. The answers to some of these questions are encoded in Japanese and Japanese Katakana characters:\n\n- Question_1: \"柔軟性\" which translates to \"flexibility\" in English.\n- Question_2: \"コミュニケーション能力\" which translates to \"communication ability\" in English.\n\nFor the other questions (Question_3 through Question_11), the answers appear to be random strings of characters such as \"TESt\", \"QWEQW\", \"SADAS\", \"CSS\", \"ASDSA\", \"ASDAS\", and \"QWEWQ\". These may represent placeholders or responses that either do not have significant meaning or are used for testing purposes.\n\nThe record has metadata indicating it was created and updated at the precise timestamp of \"2025-01-23T00:37:14.000000Z\". The record itself is assigned an ID number of 41, which suggests it is part of a larger collection of data entries, potentially stored in a database.\n\nGiven that the timestamp of the data entry is \"2025-01-23\", this record seems to be a future-dated entry relative to the current knowledge cut-off date in October 2023. This might indicate that the data is part of a testing or simulation dataset designed to include future dates.', '2025-01-22 16:37:23', '2025-01-22 16:37:23'),
(35, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object, which is a structured format for storing and transporting data. Here is what each part of the data suggests:\n\n- `\"userId\":\"U74bc9388db32ce74b3e35e88ea53f997\"`: This is a unique identifier for a user. It is likely used to differentiate between different users within a database.\n\n- `\"Question_1\":\"\\u5ba2\\u89b3\\u8996\\u70b9\"`: This is a response to the first question, which is in Unicode escape format. When decoded, it translates to \"客観視点\", which means \"objective viewpoint\" in Japanese.\n\n- `\"Question_2\":\"\\u884c\\u52d5\\u529b\"`: The response to the second question, again in Unicode, translates to \"行動力\", meaning \"action\" or \"ability to take action\" in Japanese.\n\n- `\"Question_3\":\"WQEWQ\"` through `\"Question_11\":\"ASDSAD\"`: These appear to be responses to questions 3 through 11. They are possibly placeholder text, test data, or coded responses if the context of the questions isn\'t known. The strings seem to follow a pattern but aren\'t meaningful words or phrases in English or any major language.\n\n- `\"updated_at\":\"2025-01-23T00:37:43.000000Z\"` and `\"created_at\":\"2025-01-23T00:37:43.000000Z\"`: These timestamps indicate when the data was created and last updated. The date provided is in the future relative to your current training data, suggesting this is either future planned data or a generated example.\n\n- `\"id\":42`: This might be a unique identifier for this particular object or data entry, possibly an auto-generated primary key in a database. \n\nOverall, this JSON object seems to be a record of user responses to a series of questions, stored with timestamps and a unique user ID. Some responses are in Japanese, and others seem like placeholder strings. The format is typically used for web applications or APIs to handle data exchange.\n', '2025-01-22 16:37:52', '2025-01-22 16:37:52'),
(36, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a record of responses to a survey or questionnaire from a specific user identified by the user ID \"U74bc9388db32ce74b3e35e88ea53f997.\" The record contains answers to eleven questions:\n\n1. **Question 1:** The response is in Japanese and translates to \"Objective viewpoint.\"\n2. **Question 2:** The response is also in Japanese and translates to \"Communication ability.\"\n3. **Question 3 to 11:** The responses are alphanumeric strings (such as \"WQEWQ,\" \"ASDSA,\" \"QWEQW,\" etc.) which may represent coded responses or selections from a predefined set of answers.\n\nAdditionally, the data includes timestamps for when the record was created and last updated, both being the same: \"2025-01-23T00:40:15.000000Z,\" indicating the entry was most likely created and saved at the exact same moment. The record is identified with an ID of \"43.\"\n\nSince the data is from 2025, it is outside the training data and knowledge I have which is up to October 2023, and so I cannot provide context or additional insights specific to how these responses might be used or interpreted in 2025.', '2025-01-22 16:40:20', '2025-01-22 16:40:20'),
(37, 'U74bc9388db32ce74b3e35e88ea53f997', 'The provided data is a JSON object that appears to represent a record from a database or online form submission. Here\'s a breakdown of the information:\n\n1. `userId`: \"U74bc9388db32ce74b3e35e88ea53f997\" \n   - This is a unique identifier for the user, probably a hashed or encoded string ensuring privacy for the user\'s identity.\n\n2. `Question_1` and `Question_2`: \"\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u80fd\\u529b\"\n   - This appears to be text in Japanese. When decoded, it translates to \"コミュニケーション能力,\" which means \"communication skills\" in English.\n\n3. `Question_3` to `Question_11`: These fields are responses to various questions, filled with what appears to be random strings like \"QWEWQ\", \"ASDSAD\", \"SADSA\", and so on. It\'s unclear whether these are placeholder texts or actual responses.\n\n4. `updated_at` and `created_at`: \"2025-01-23T00:42:33.000000Z\"\n   - These timestamps indicate the date and time when this record was created and last updated, which is January 23, 2025, at 00:42:33 UTC. This future date implies that the data might be a sample, a test, or future-oriented dataset not meant for live production use prior to 2025.\n\n5. `id`: 44\n   - This is likely an auto-incremented record identifier within the database, representing this specific entry\'s unique ID.\n\nOverall, the data seems to be collected from a form or survey focusing on communication skills (from the context of Questions 1 and 2) with responses that may be placeholders, test data, or user-generated entries. The exact context or purpose would depend on the surrounding system or application that handles this data.', '2025-01-22 16:42:47', '2025-01-22 16:42:47'),
(38, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data record appears to be part of a database or a survey response, with fields capturing responses to a set of 11 questions, along with metadata about the entry such as unique identifiers and timestamps.\n\nHere\'s a breakdown of the data fields:\n\n1. **userId**: \"U74bc9388db32ce74b3e35e88ea53f997\" - This is likely a unique identifier assigned to the user who submitted this response.\n\n2. **Question_1**: \"\\u5ba2\\u89b3\\u8996\\u70b9\" - This response is in Unicode and translates from Japanese to \"objective perspective\" or \"viewpoint\".\n\n3. **Question_2**: \"\\u597d\\u5947\\u5fc3\" - This is also in Unicode, translating from Japanese to \"curiosity\".\n\n4. **Questions 3-11**: (e.g., \"EWQEQW\", \"ASDSA\") - These are mostly string or random text entries. They may represent coded responses, or it could be placeholder text/keys for testing purposes. These responses are not inherently meaningful without additional context regarding what each question asks.\n\n5. **updated_at**: \"2025-01-23T00:46:43.000000Z\" - This timestamp indicates the exact date and time when the record was last updated.\n\n6. **created_at**: \"2025-01-23T00:46:43.000000Z\" - This shows when the record was originally created, which is the same as the update time, suggesting this record might not have been edited after its creation.\n\n7. **id**: 45 - This is likely a unique identifier for this particular record in the database.\n\nWithout additional context on what each question is meant to capture or represent, it is difficult to provide more detailed insights into the data fields beyond their face value encoding or representation.', '2025-01-22 16:46:54', '2025-01-22 16:46:54'),
(39, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data represents a record from a database or a form submission. Here\'s a breakdown of the information:\n\n1. **userId**: `\"U74bc9388db32ce74b3e35e88ea53f997\"` - This is a unique identifier for the user who submitted this data. It is likely used to track user-specific information across different records.\n\n2. **Question_1**: `\"\\u55b6\\u696d\\u77e5\\u8b58\"` - In Unicode, this represents the characters \"営業知識\", which translates to \"business knowledge\" in English.\n\n3. **Question_2**: `\"\\u5fdc\\u7528\\u529b\"` - In Unicode, this represents the characters \"応用力\", which translates to \"applicability\" or \"application ability\" in English.\n\n4. **Question_3** to **Question_11**: These fields contain strings composed of characters like \"QWE\", \"ASD\", etc. These may represent user inputs or responses to survey questions, although without context, the specific meaning is unclear.\n\n5. **updated_at**: `\"2025-01-23T00:48:14.000000Z\"` - This indicates the date and time when the record was last updated. In this case, January 23, 2025, at 00:48:14 UTC.\n\n6. **created_at**: `\"2025-01-23T00:48:14.000000Z\"` - This indicates the date and time when the record was initially created. In this case, the record was created at the same moment it was updated.\n\n7. **id**: `46` - This is a numerical identifier for this specific record in the database, implying it is the 46th entry.\n\nOverall, this seems to be a response to a set of questions, some labeled with Unicode characters suggesting specific categories (business knowledge and application ability), and other fields with placeholder-like text (QWE, ASD). The context or purpose of the questions is not evident from the data alone.', '2025-01-22 16:48:21', '2025-01-22 16:48:21'),
(40, 'U74bc9388db32ce74b3e35e88ea53f997', 'This data appears to be a JSON object containing information related to a set of questions answered by a user with the ID \"U74bc9388db32ce74b3e35e88ea53f997\". The questions are labeled from \"Question_1\" to \"Question_11,\" and each question has a corresponding answer.\n\nHere\'s a breakdown of the data:\n\n- `userId`: A unique identifier for the user, which is \"U74bc9388db32ce74b3e35e88ea53f997.\"\n- `Question_1`: The answer is \"\\u5ba2\\u89b3\\u8996\\u70b9,\" which is the Unicode representation for the Japanese term \"客観視点,\" meaning \"objective viewpoint\" or \"objectivity.\"\n- `Question_2`: The answer is \"\\u67d4\\u8edf\\u6027,\" the Unicode representation for the Japanese term \"柔軟性,\" meaning \"flexibility.\"\n- `Question_3`: The answer is \"123,\" which seems to be a numerical response.\n- `Question_4` to `Question_11`: These answers are non-standard responses consisting of characters \"qweqw,\" \"qwewqe,\" and \"21321,\" which could be placeholder text or user-generated responses.\n\n- `updated_at` and `created_at`: Timestamps indicating when the data was created and last updated, both set to \"2025-01-23T01:08:55.000000Z,\" suggesting that the data was created and updated simultaneously on January 23, 2025, which is beyond my training data timeframe.\n\n- `id`: A unique identifier for this data entry, which is \"47.\"\n\nThis data seems to be part of a survey or form filled out by a user, where the answers are captured in a structured manner for later analysis or processing.', '2025-01-22 17:09:05', '2025-01-22 17:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2025_01_21_213020_create_answers_table', 1),
(6, '0001_01_01_000000_create_users_table', 2),
(7, '0001_01_01_000001_create_cache_table', 2),
(8, '0001_01_01_000002_create_jobs_table', 2),
(9, '2025_01_21_212956_create_personal_access_tokens_table', 2),
(10, '2025_01_21_213531_create_answers_table', 2),
(11, '2025_01_21_221341_create_input_table', 3),
(12, '2025_01_21_221341_create_inputs_table', 4),
(13, '2025_01_21_225624_create_answers_table', 5),
(14, '2025_01_22_184634_create_generated_results_table', 6),
(15, '2025_01_22_193035_create_generated_results_table', 7),
(16, '2025_01_22_235213_create_prompts_table', 8),
(17, '2025_01_22_235256_create_data_imports_table', 8),
(18, '2025_01_23_001939_create_data_imports_table', 9),
(19, '2025_01_23_002052_create_prompts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prompts`
--

CREATE TABLE `prompts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_id` char(36) DEFAULT NULL,
  `prompt` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prompts`
--

INSERT INTO `prompts` (`id`, `data_id`, `prompt`, `created_at`, `updated_at`) VALUES
(1, 'e8cd53b9-7d61-433c-8c4f-25f6527feaa0', 'Sample prompt 1', '2025-01-22 16:25:51', '2025-01-22 16:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hqGUqyjQrWwiyj5MAnaXvaqxhYza06U5ZQ3lAlZ5', NULL, '127.0.0.1', 'vercel-screenshot/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVRuOThGTDRHejJEbWR1TUJxVDd5TURyMFdpZnJLRVRqZUM1RjMweSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly83NGE4LTIxNi0yNDctODctMTk4Lm5ncm9rLWZyZWUuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737594243),
('xNpoTl6jGfpluZfG2czK9kpgwwPWcXadzrYfp9cp', NULL, '127.0.0.1', 'vercel-screenshot/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1BZNXhNVmhBYTR3Z0V0RGUzekpZQTcwS2RyV204NnA1RlI0S0dUVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly83NGE4LTIxNi0yNDctODctMTk4Lm5ncm9rLWZyZWUuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737594243);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `data_imports`
--
ALTER TABLE `data_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generated_results`
--
ALTER TABLE `generated_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prompts`
--
ALTER TABLE `prompts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `data_imports`
--
ALTER TABLE `data_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generated_results`
--
ALTER TABLE `generated_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prompts`
--
ALTER TABLE `prompts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
