-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 09:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `partydb`
--

CREATE TABLE `partydb` (
  `id` int(11) NOT NULL,
  `party_name` varchar(80) NOT NULL,
  `party_char` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partydb`
--

INSERT INTO `partydb` (`id`, `party_name`, `party_char`) VALUES
(1, 'Party1', 'Rahul');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `id` int(11) NOT NULL,
  `voter_name` varchar(50) NOT NULL,
  `voter_card` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`id`, `voter_name`, `voter_card`) VALUES
(1, 'Harsh', 1234567),
(3, 'Mane', 986767),
(4, 'Harshal', 4343);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `vote_party` varchar(80) NOT NULL,
  `voter_name` varchar(50) NOT NULL,
  `voter_card` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `vote_party`, `voter_name`, `voter_card`) VALUES
(1, 'party1', 'Richie ', 87178675),
(3, 'party3', 'Ranjan', 89675656),
(4, 'party2', 'Umesh', 989796),
(5, 'party1', 'Ranj', 896323434),
(6, 'party2', 'Utkarsh', 345366),
(7, 'Party2', 'Harsh', 1234567),
(8, 'Party2', 'Mane', 986767),
(9, 'Party2', 'Harshal', 4343);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `partydb`
--
ALTER TABLE `partydb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `partydb`
--
ALTER TABLE `partydb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
