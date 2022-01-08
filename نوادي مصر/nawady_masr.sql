-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 10:02 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nawady_masr`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `Price` varchar(128) DEFAULT NULL,
  `Price_disc` varchar(128) DEFAULT NULL,
  `duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `Price`, `Price_disc`, `duration`) VALUES
(1, 'النادي الاهلي', '1000', '800', 'mobile'),
(2, 'نادي الزمالك', '2000', '1950', 'mobile'),
(3, 'نادي سموحة', '10000', '9500', 'mobile'),
(4, 'نادي الاتحاد السكندري', '1900', '1000', 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `club_signs`
--

CREATE TABLE `club_signs` (
  `id` int(11) NOT NULL,
  `coustmer_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `duration` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `club_signs`
--

INSERT INTO `club_signs` (`id`, `coustmer_id`, `club_id`, `duration`) VALUES
(145, 1, 2, '5'),
(146, 1, 4, '2');

-- --------------------------------------------------------

--
-- Table structure for table `creataccount`
--

CREATE TABLE `creataccount` (
  `id` int(11) NOT NULL,
  `Confirm_Password` varchar(128) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `First_Name` varchar(128) DEFAULT NULL,
  `Last_Name` varchar(128) DEFAULT NULL,
  `My_Password` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creataccount`
--

INSERT INTO `creataccount` (`id`, `Confirm_Password`, `Email`, `First_Name`, `Last_Name`, `My_Password`) VALUES
(1, 'boula', 'nessimboula@gmail.com', 'Boula', 'Nessim', 'boula'),
(3, 'mmm', 'boula.nessim.soliman@gmail.com', 'Boula', 'Nessim', 'mmm'),
(4, '', 'emad@gmail.com', '', '', ''),
(9, 'nnn', 'emadnessim@gmail.com', 'emad', 'Nessim', 'nnn'),
(10, '123', 'ahmed@gmail.com', 'Ahmed', 'Ali', '123'),
(11, 'mora', 'mora@gmail.com', 'Mora', 'Kamal', 'mora'),
(15, 'mmmmm', 'nessimmm@gmail.com', 'nessim', 'soliman', 'mmmmm'),
(16, 'gemy', 'Gemian@gmail.com', 'Gemiana', 'Shawky', 'gemy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `club_signs`
--
ALTER TABLE `club_signs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coustmer_id` (`coustmer_id`),
  ADD KEY `product_id` (`club_id`);

--
-- Indexes for table `creataccount`
--
ALTER TABLE `creataccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Confirm_Password` (`Confirm_Password`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `My_Password` (`My_Password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `club_signs`
--
ALTER TABLE `club_signs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `creataccount`
--
ALTER TABLE `creataccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `club_signs`
--
ALTER TABLE `club_signs`
  ADD CONSTRAINT `club_signs_ibfk_1` FOREIGN KEY (`coustmer_id`) REFERENCES `creataccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `club_signs_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
