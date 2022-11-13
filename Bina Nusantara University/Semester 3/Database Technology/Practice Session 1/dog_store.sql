-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 08:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dog store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` char(5) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerGender` varchar(10) NOT NULL,
  `CustomerEmail` varchar(100) NOT NULL,
  `CustomerPhoneNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerGender`, `CustomerEmail`, `CustomerPhoneNumber`) VALUES
('CU001', 'Felix Gozali', 'Male', 'felix@gmail.com', '08153801312'),
('CU002', 'Antoni Gozali', 'Male', 'antoni@gmail.com', '08127771312'),
('CU003', 'Felix Anderson', 'Male', 'anderson@gmail.com', '08133758712'),
('CU004', 'Cristoper Anderson', 'Male', 'cristoper@gmail.com', '08231412412'),
('CU005', 'Tony Stark', 'Male', 'tony@gmail.com', '08661232351'),
('CU006', 'Stark Anderson', 'Male', 'stark@binus.ac.id', '08991298982'),
('CU007', 'Tony Gozali', 'Male', 'gozali@binus.ac.id', '08991772312'),
('CU008', 'Felix Cristoper', 'Male', 'felixcris@binus.ac.id', '08151327799'),
('CU009', 'Jose', 'Male', 'jose@binus.ac.id', '08172121199'),
('CU010', 'Josi', 'Female', 'josi@binus.ac.id', '08448712012');

-- --------------------------------------------------------

--
-- Table structure for table `dog`
--

CREATE TABLE `dog` (
  `DogID` char(5) NOT NULL,
  `DogTypeID` varchar(5) NOT NULL,
  `DogGender` varchar(10) NOT NULL,
  `DogSize` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dog`
--

INSERT INTO `dog` (`DogID`, `DogTypeID`, `DogGender`, `DogSize`) VALUES
('DO001', 'DT001', 'Male', 'Small'),
('DO002', 'DT002', 'Male', 'Small'),
('DO003', 'DT003', 'Male', 'Small'),
('DO004', 'DT004', 'Male', 'Small'),
('DO005', 'DT005', 'Male', 'Medium'),
('DO006', 'DT006', 'Female', 'Medium'),
('DO007', 'DT007', 'Female', 'Medium'),
('DO008', 'DT008', 'Female', 'Big'),
('DO009', 'DT009', 'Female', 'Big'),
('DO010', 'DT010', 'Female', 'Big');

-- --------------------------------------------------------

--
-- Table structure for table `dogtype`
--

CREATE TABLE `dogtype` (
  `DogTypeID` char(5) NOT NULL,
  `DogTypeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dogtype`
--

INSERT INTO `dogtype` (`DogTypeID`, `DogTypeName`) VALUES
('DT001', 'Labrador Retrievers'),
('DT002', 'German Shepherds'),
('DT003', 'Golden Retrievers'),
('DT004', 'French Bulldogs'),
('DT005', 'Bulldogs'),
('DT006', 'Beagles'),
('DT007', 'Poodles'),
('DT008', 'Rottweilers'),
('DT009', 'German Shorthaired Pointers'),
('DT010', 'Basset Hound');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membershipID` char(5) NOT NULL CHECK (octet_length(`membershipID`) = 5),
  `customerID` char(5) NOT NULL,
  `startMembership` date NOT NULL,
  `membershipType` varchar(20) NOT NULL CHECK (`membershipType` in ('bronze','silver','gold'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membershipID`, `customerID`, `startMembership`, `membershipType`) VALUES
('ME001', 'CU001', '2022-07-05', 'gold');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionID` char(5) NOT NULL,
  `DogID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`TransactionID`, `DogID`) VALUES
('TR001', 'DO001'),
('TR002', 'DO001'),
('TR003', 'DO002'),
('TR004', 'DO002'),
('TR005', 'DO003'),
('TR006', 'DO004'),
('TR007', 'DO005'),
('TR008', 'DO006'),
('TR009', 'DO007'),
('TR010', 'DO008'),
('TR011', 'DO009'),
('TR012', 'DO009'),
('TR013', 'DO009'),
('TR014', 'DO010'),
('TR015', 'DO010');

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` char(5) NOT NULL,
  `CustomerID` char(5) NOT NULL,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionID`, `CustomerID`, `TransactionDate`) VALUES
('TR001', 'CU001', '2021-10-12'),
('TR002', 'CU001', '2021-10-15'),
('TR003', 'CU002', '2021-10-19'),
('TR004', 'CU003', '2021-11-11'),
('TR005', 'CU004', '2021-11-12'),
('TR006', 'CU004', '2021-12-05'),
('TR007', 'CU004', '2021-12-02'),
('TR008', 'CU005', '2022-02-01'),
('TR009', 'CU006', '2022-02-05'),
('TR010', 'CU007', '2022-02-12'),
('TR011', 'CU008', '2022-03-03'),
('TR012', 'CU008', '2022-03-05'),
('TR013', 'CU009', '2022-03-10'),
('TR014', 'CU009', '2022-04-10'),
('TR015', 'CU010', '2022-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`DogID`),
  ADD KEY `dog_ibfk_1` (`DogTypeID`);

--
-- Indexes for table `dogtype`
--
ALTER TABLE `dogtype`
  ADD PRIMARY KEY (`DogTypeID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membershipID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionID`,`DogID`),
  ADD KEY `transactiondetail_ibfk_1` (`DogID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `transactionheader_ibfk_1` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dog`
--
ALTER TABLE `dog`
  ADD CONSTRAINT `dog_ibfk_1` FOREIGN KEY (`DogTypeID`) REFERENCES `dogtype` (`DogTypeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`CustomerID`) ON UPDATE CASCADE;

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`DogID`) REFERENCES `dog` (`DogID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
