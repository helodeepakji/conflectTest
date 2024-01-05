-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2024 at 05:42 PM
-- Server version: 10.5.23-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dstechsi_doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `period` varchar(255) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `specification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `type` enum('Package','Service') NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `web_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `period`, `price`, `specification`, `created_at`, `updated_at`, `type`, `image`, `web_url`) VALUES
(3, 'Audio test', '9 Weeks', 50, '', '2023-07-13 11:09:12', '2023-09-16 18:32:34', 'Service', 'https://dstechs.in/audiumNew/admin/assets/img/packages/unnamed (2).jpg', 'www.test.com'),
(4, 'Hearing Test', '1 Weeks', 2000, '[\"Pure Tone Audiometry (PTA)\",\"Impedance Audiometry (IMP)\",\"Oto Acoustic Emission (OAE)\",\"Brain Steam Evoked Response Audiometry (BERA)\",\"Auditory Steady State Response (ASSR)\",\"Vestibule Evoked Maiyogivic Potential (VEMP)\",\"Electro Cochl Graphy (ECG)\",\"Impedance Audiometry (IMP)\",\"Oto Acoustic Emission (OAE)\",\"Brain Steam Evoked Response Audiometry (BERA)\",\"Auditory Steady State Response (ASSR)\",\"Vestibule Evoked Maiyogivic Potential (VEMP)\",\"Electro Cochl Graphy (ECG)\"]', '2023-07-13 12:15:56', '2023-10-07 15:26:02', 'Package', 'https://hearingaidbhubaneswar.com/wp-content/uploads/elementor/thumbs/what-to-expect-from-a-hearing-test-q134cjrj4kv51ehlr97tn1zdfp1je7jwv9uoyt3eew.jpeg', 'www.check.com'),
(5, 'Speech Therapy ', '2 Days', 1000, '[\"Pure Tone Audiometry (PTA)\",\"Impedance Audiometry (IMP)\",\"Oto Acoustic Emission (OAE)\",\"Brain Steam Evoked Response Audiometry (BERA)\",\"Auditory Steady State Response (ASSR)\",\"Vestibule Evoked Maiyogivic Potential (VEMP)\"]', '2023-07-15 10:44:42', '2023-10-10 11:49:05', 'Package', 'https://dstechs.in/audiumNew/admin/assets/img/packages/Clarity-ARP-3871-2-1024x909.jpg', 'www.google.com'),
(6, 'Eye test', '1 Days', 1500, 'null', '2023-07-15 10:46:37', '2023-10-07 12:43:30', 'Service', 'https://dstechs.in/audiumNew/admin/assets/img/packages/types-eye-tests.avif', 'www.eyetest.com'),
(9, 'cold fever,', '0 Days', 50, 'null', '2023-10-07 13:11:24', '2023-10-07 13:15:49', 'Service', 'https://dstechs.in/audiumNew/admin/assets/img/packages/1000_F_232434280_DJ3GRQbQMfT1Xrm1fYET9NTEyhVWSjNV.jpg', 'www.eyetest.com'),
(10, 'Hearing Aid', '7 Days', 1000, '[\"\",\"Impedance Audiometry (IMP)\",\"Oto Acoustic Emission (OAE)\",\"Brain Steam Evoked Response Audiometry (BERA)\",\"Auditory Steady State Response (ASSR)\",\"Vestibule Evoked Maiyogivic Potential (VEMP)\",\"Electro Cochl Graphy (ECG)\",\"Impedance Audiometry (IMP)\",\"Oto Acoustic Emission (OAE)\",\"Brain Steam Evoked Response Audiometry (BERA)\",\"Auditory Steady State Response (ASSR)\",\"Vestibule Evoked Maiyogivic Potential (VEMP)\",\"Electro Cochl Graphy (ECG)\"]', '2023-10-10 09:50:07', '2023-10-10 09:51:48', 'Package', 'https://hearingaidbhubaneswar.com/wp-content/uploads/elementor/thumbs/626-q1rn9gy8te0yqz474yoj6qo0sv7igshmk138239v3s.jpg', ''),
(12, 'Best Repairing Services', '1 Days', 100, '[\"Phonak\" , \"Widex\" , \"Resound\" , \"Interfon\" , \"Audio services\" , \"Danavox\" ,  \"Signia\" , \"Sonic\"]', '2023-10-10 11:35:33', '2023-10-10 11:37:25', 'Package', 'https://dstechs.in/audiumNew/admin/assets/img/packages/images (10).jpeg', ''),
(13, 'Assessment of Body Balance', '1 Days', 100, '[\"VEMP\", \"ECOG\", \"Clinical Test\"]', '2023-10-10 11:46:39', '2023-10-10 12:09:36', 'Package', 'https://hearingaidbhubaneswar.com/wp-content/uploads/elementor/thumbs/40436_PT_motor_control_3_2.rev_.1581027198-q1kxxuosd7bygwd7q6xi9j46fxdgqk8vsb7onmhq60.jpeg', ''),
(14, 'Tinnitus Assessment & Management ', '1 Days', 100, '[\"Tinnitus Assessment\", \"Tinnitus Management\"]', '2023-10-10 11:47:29', '2023-10-10 11:57:41', 'Package', 'https://dstechs.in/audiumNew/admin/assets/img/packages/download (5).jpeg', ''),
(15, 'New Born Hearing Testing ', '1 Days', 100, '[\"OAE Test\", \"ABR Test\"]', '2023-10-10 11:48:32', '2023-10-10 12:02:07', 'Package', 'https://dstechs.in/audiumNew/admin/assets/img/packages/download (6).jpeg', ''),
(16, 'Speech and language Assisment', '1 Days', 100, '[\"Children\", \"Adult\", \"Voice\", \"Stuttering\"]', '2023-10-10 11:49:38', '2023-10-10 12:10:44', 'Package', 'https://dstechs.in/audiumNew/admin/assets/img/packages/images (11).jpeg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
