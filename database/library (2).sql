-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 04:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(255) NOT NULL,
  `Admin_name` varchar(255) NOT NULL,
  `Admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `Admin_name`, `Admin_password`) VALUES
(1, 'Admin', 'Admin2021');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_id` int(10) NOT NULL,
  `Category_id` int(10) NOT NULL,
  `Category_name` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Edition` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Copies` int(10) NOT NULL,
  `Fineperday` int(50) NOT NULL,
  `Remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_id`, `Category_id`, `Category_name`, `Title`, `Edition`, `Author`, `Publisher`, `Copies`, `Fineperday`, `Remarks`) VALUES
(1, 1, '', 'ed', 'sd', 'sd', 'sdd', 2, 100, 'cscd'),
(2, 1, 'Science', 'Lolita', 'lol', 'lol', 'lol', 5, 100, 'cscd'),
(10, 1, 'jTextField3', 'jTextField4', 'jTextField5', 'jTextField6', 'jTextField7', 100, 100, 'jTextField10'),
(11, 1, 'science', 'DSA', '1', 'FDS', 'DS', 4, 100, 'VCDF'),
(20, 1, 'science', 'gcc', '1', 'jhi', 'hbhb', 50, 100, 'mbjbjkb'),
(30, 1, 'science', 'FF', '1', 'FF', 'FZD', 12, 120, 'BXF'),
(34, 1, 'science', 'cchijnm,', '1', 'sdfghjk', 'xdfgyhj', 12, 300, 'awesrtyuio'),
(47, 1, 'science', 'sdcfvbn', '1', 'dcfv', 'sxdcfv', 1, 134, '1wedfrghn');

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `Borrower_id` int(10) NOT NULL,
  `Book_id` int(10) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `copies` int(10) NOT NULL,
  `Fineperday` int(50) NOT NULL,
  `readers_id` int(10) NOT NULL,
  `reader_Name` varchar(100) NOT NULL,
  `librarian_id` int(10) NOT NULL,
  `librarian_name` varchar(50) NOT NULL,
  `releasedate` date NOT NULL,
  `duedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_id` int(10) NOT NULL,
  `Category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_id`, `Category_name`) VALUES
(1, 'science'),
(2, 'tech'),
(3, 'history'),
(4, 'hj');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `librarian_Id` int(10) NOT NULL,
  `librarian_name` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_Id`, `librarian_name`, `Contact`, `Email`, `Gender`, `password`) VALUES
(1, 'Eve', '+254724214557', 'evelynkariuki671@gmail.com', 'Female', 'Eve2020'),
(20, 'rfrt', '435', 'fghhg', 'g', 'hgjjh');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(10) NOT NULL,
  `readers_id` int(10) NOT NULL,
  `Subscription_pay` int(10) NOT NULL,
  `Fine` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `readers`
--

CREATE TABLE `readers` (
  `readers_id` int(10) NOT NULL,
  `reader_name` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `readers`
--

INSERT INTO `readers` (`readers_id`, `reader_name`, `Contact`, `Email`, `Gender`, `Password`) VALUES
(1, 'E', '344', 'FDSF', 'FVBF', 'FVB'),
(3, 'Marvel', '1313', 'dgfgd', 'f', 'gbfgf');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `return_id` int(10) NOT NULL,
  `Borrower_id` int(10) NOT NULL,
  `readers_id` int(255) NOT NULL,
  `reader_Name` varchar(255) NOT NULL,
  `Book_id` int(10) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Releasedate` date NOT NULL,
  `Duedate` date NOT NULL,
  `Returndate` date NOT NULL,
  `Fineperday` int(10) NOT NULL,
  `TotalFIne` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`Borrower_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarian_Id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`);

--
-- Indexes for table `readers`
--
ALTER TABLE `readers`
  ADD PRIMARY KEY (`readers_id`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `Borrower_id` (`Borrower_id`),
  ADD KEY `readers_id` (`readers_id`),
  ADD KEY `Book_id` (`Book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `Book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `Borrower_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `librarian_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`Borrower_id`) REFERENCES `borrowers` (`Borrower_id`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`readers_id`) REFERENCES `readers` (`readers_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
