-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2020 at 03:52 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TopHack`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `catID` int(15) NOT NULL,
  `catDes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catDes`) VALUES
(2212345, 'Home Hacks '),
(2212346, 'School Hack'),
(2212347, 'Productivity Hacks'),
(2212348, 'Hygiene Hacks '),
(2212349, 'Digital hacks '),
(56567567, 'gdfgfdgfdsgadgfadg');

-- --------------------------------------------------------

--
-- Table structure for table `HackArt`
--

CREATE TABLE IF NOT EXISTS `HackArt` (
  `hackID` int(15) NOT NULL,
  `hackLang` varchar(255) NOT NULL,
  `pubDate` datetime NOT NULL,
  `lastUpdated` datetime NOT NULL,
  `userID` int(15) NOT NULL,
  `catID` int(15) NOT NULL,
  `Likes` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HackArt`
--

INSERT INTO `HackArt` (`hackID`, `hackLang`, `pubDate`, `lastUpdated`, `userID`, `catID`, `Likes`) VALUES
(127891, 'English', '2018-09-19 00:00:00', '2019-10-09 00:00:00', 12346, 2212346, 10000),
(129873, 'Amaharic', '2019-02-04 08:00:00', '2019-01-07 00:00:00', 12348, 2212346, 10002),
(1212345, 'English', '2019-10-08 00:00:00', '2020-03-02 00:00:00', 12347, 2212345, 10000),
(1212346, 'Spanish', '2019-12-18 00:00:00', '2020-01-15 00:00:00', 12348, 2212349, 2000000),
(5647657, 'adfgafg', '2020-03-02 00:00:00', '2020-03-01 00:00:00', 131231233, 56567567, 34534);

-- --------------------------------------------------------

--
-- Table structure for table `HackVid`
--

CREATE TABLE IF NOT EXISTS `HackVid` (
  `vidID` int(15) NOT NULL,
  `vidLang` varchar(255) NOT NULL,
  `vidPubDate` datetime NOT NULL,
  `lastUpdated` datetime NOT NULL,
  `userID` int(15) NOT NULL,
  `catID` int(15) NOT NULL,
  `Liked` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HackVid`
--

INSERT INTO `HackVid` (`vidID`, `vidLang`, `vidPubDate`, `lastUpdated`, `userID`, `catID`, `Liked`) VALUES
(991532, 'Portugese ', '2019-11-04 12:00:00', '2020-03-03 10:00:00', 12348, 2212347, 1000),
(994652, 'Spanish', '2020-03-02 01:00:00', '2020-03-02 06:00:00', 12347, 2212348, 249),
(998765, 'English', '2020-01-07 22:00:00', '2019-12-02 02:00:00', 12348, 2212349, 256),
(9912345, 'English', '2020-02-01 09:00:00', '2020-03-01 07:00:00', 12345, 2212345, 1000),
(9912346, 'French', '2020-02-18 05:00:00', '2020-03-04 09:00:00', 12346, 2212347, 15),
(634656325, 'dsfghsdg', '2020-03-01 00:00:00', '2020-03-03 00:00:00', 131231231, 56567567, 100);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `userID` int(15) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `userAge` int(15) NOT NULL,
  `userCity` varchar(255) NOT NULL,
  `userState` varchar(255) NOT NULL,
  `userCountry` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the user''s info ';

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`userID`, `firstName`, `lastName`, `userAge`, `userCity`, `userState`, `userCountry`, `permission`) VALUES
(12345, 'Fitsum', 'Legesse', 22, 'Seattle', 'WA', 'United States ', 'Add'),
(12346, 'Omega', 'Tesfaye', 23, 'Seattle', 'WA', 'United States', 'View'),
(12347, 'Meskerem', 'Ayele', 24, 'San Fransisco ', 'California', 'United States', 'View'),
(12348, 'Hope', 'Schnider', 21, 'Arada', 'Addis Abeba', 'United States ', 'Edit'),
(131231231, 'Fitsum', 'Legesse', 23, 'Seattle', 'WA', 'United States ', ''),
(131231233, 'Omega', 'Tesfaye', 11, 'Palm Beach', 'California', 'United States ', '');

-- --------------------------------------------------------

--
-- Table structure for table `View`
--

CREATE TABLE IF NOT EXISTS `View` (
  `viewID` int(15) NOT NULL,
  `viewTime` datetime NOT NULL,
  `hackID` int(15) NOT NULL,
  `vidID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `View`
--

INSERT INTO `View` (`viewID`, `viewTime`, `hackID`, `vidID`) VALUES
(87112, '2019-12-09 06:18:17', 1212345, 9912346),
(87123, '2019-12-10 09:37:20', 129873, 998765),
(87321, '2019-12-17 00:00:00', 1212345, 9912345),
(87765, '2019-10-07 07:21:42', 1212345, 9912346),
(4321253, '2020-03-02 00:00:00', 5647657, 634656325);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `HackArt`
--
ALTER TABLE `HackArt`
  ADD PRIMARY KEY (`hackID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `HackVid`
--
ALTER TABLE `HackVid`
  ADD PRIMARY KEY (`vidID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `View`
--
ALTER TABLE `View`
  ADD PRIMARY KEY (`viewID`),
  ADD KEY `vidID` (`vidID`),
  ADD KEY `hackID` (`hackID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `HackArt`
--
ALTER TABLE `HackArt`
  ADD CONSTRAINT `HackArt_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`),
  ADD CONSTRAINT `HackArt_ibfk_2` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`);

--
-- Constraints for table `HackVid`
--
ALTER TABLE `HackVid`
  ADD CONSTRAINT `HackVid_ibfk_3` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`),
  ADD CONSTRAINT `HackVid_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`),
  ADD CONSTRAINT `HackVid_ibfk_2` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`);

--
-- Constraints for table `View`
--
ALTER TABLE `View`
  ADD CONSTRAINT `View_ibfk_2` FOREIGN KEY (`hackID`) REFERENCES `HackArt` (`hackID`),
  ADD CONSTRAINT `View_ibfk_1` FOREIGN KEY (`vidID`) REFERENCES `HackVid` (`vidID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
