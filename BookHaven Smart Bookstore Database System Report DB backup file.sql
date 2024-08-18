-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 07:27 AM
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
-- Database: `bookhaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_item`
--

CREATE TABLE `book_item` (
  `Item_code` varchar(10) NOT NULL,
  `ISBN` char(13) NOT NULL,
  `Titel` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Author` varchar(40) DEFAULT NULL,
  `Publisher` varchar(40) DEFAULT NULL,
  `Year_of_publishtion` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_item`
--

INSERT INTO `book_item` (`Item_code`, `ISBN`, `Titel`, `Category`, `Author`, `Publisher`, `Year_of_publishtion`) VALUES
('BK001', '9780133970777', 'Fundamentals of Database systems 7th edition', 'Database Book ', 'Ramez Elmasri,Shamkant Navathe', 'Pearson Education Limited', 2015),
('BK002', '9789332582705', 'Database Systems: Models, Languages, Design, and', 'Database Book ', 'Ramez Elmasri, Shamkant Navathe', 'Pearson Education Limited', 2006),
('BK003', '9780582844339', 'Fundamentals of Database Systems: SQL Introduction', 'Database Book ', 'Ramez Elmasri, Shamkant Navathe', 'Pearson Education Limited', 2003),
('BK004', '9780805317558', 'Advance Database Management System', 'Database Book ', 'Ramez Elmasri, Shamkant Navathe', 'Pearson Education Limited', 2011),
('BK005', '9780330305372', 'Beloved', 'Novel', 'Toni Morrison', 'Alfred A. Knopf Inc.', 1987),
('BK006', '9780141441146', 'Jane Eyre', 'Novel', 'Charlotte Bront ', 'Smith, Elder Co.', 1847),
('BK007', '9780674729018', 'Make it Stick', 'Educationa', 'Peter C. Brown', 'Harvard University Press', 2014),
('BK008', '9780345300058', 'Cosmos', 'Educationa', 'Roald Dahl', 'Jonathan Capes', 1980),
('BK009', '9780142402535', 'Matilda', 'children s', 'Don Freeman', 'Viking Press', 1988);

-- --------------------------------------------------------

--
-- Table structure for table `contact_number`
--

CREATE TABLE `contact_number` (
  `Supplier_ID` varchar(10) NOT NULL,
  `Contact_number` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_number`
--

INSERT INTO `contact_number` (`Supplier_ID`, `Contact_number`) VALUES
('SP0001', '+11 53 203 2'),
('SP0001', '+94 77 141 0'),
('SP0002', '+11 25 627 7'),
('SP0003', '+94 11 280 1'),
('SP0003', '+94 75 378 3'),
('SP0004', '+94 11 248 1'),
('SP0004', '+94 75 789 3'),
('SP0005', '+94 11 285 0'),
('SP0005', '+94 77 608 9'),
('SP0006', '+94 71 842 8');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(10) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_number` char(10) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_name`, `Surname`, `Email`, `Contact_number`, `Address`) VALUES
(2023000001, 'Senura', 'Alwis', 'senuraalwis3@gmail.com', '0711234567', '135/6 Street, Josephs Stree,Colombo'),
(2023000002, 'Nimesh', 'Costha', 'nimesh2costha@gmail.com', '0778875621', '  237/2/10 Main Street 11,Colombo'),
(2023000003, 'Nethma', 'Adhikari', 'nethmaadhikari@gmail.com', '0717854269', '28/2/3,Lane One,Kadawatha'),
(2023000004, 'Dilaksha', 'Vimukthi', 'dilaksha2003@gmail.com', '0784517741', ' 52 Street, Sebastian Mw Mirigama Road,Negambo'),
(2023000005, 'Dimuth', 'Karunarathna', 'dimuthkarunarathna6@gmail.com', '0775575621', '111 Galle Road, 04,Colombo'),
(2023000006, 'Ashan', 'De Silva', 'ashandealwis@gmail.com', '0784521691', '81,2nd Cross Street 11,Colombo'),
(2023000007, 'Roshan', 'Mendis', 'roshanmendis1234@gmail.com', '0714879823', 'No.20, Dutugamunu Street,Kohuwala'),
(2023000008, 'Asanka', 'Hewage', 'AsankaH2000@gmail.com', '0774586311', '923,E W Perera mawtha,Baththaramulla'),
(2023000009, 'Nuwani', 'Alwis', 'nuwanialwis1999@gmail.com', '0784578632', '131/3/A,Duplication Road,Colombo'),
(2023000010, 'Hashan', 'Weerathunga', 'hashanweerathunga2003@gmail.com', '0787875661', ' 1630/4, S.W. Perera Mawatha,Rajagiriya');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_code` varchar(10) NOT NULL,
  `Item_name` varchar(30) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Supplier` varchar(30) NOT NULL,
  `Stock_level` varchar(10) DEFAULT NULL,
  `Recorder_level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_code`, `Item_name`, `Price`, `Supplier`, `Stock_level`, `Recorder_level`) VALUES
('BK001', 'Database Book 1', 2000.00, 'Makeenbooks Pvt Ltd', '10', '5'),
('BK002', 'Database Book 2', 1000.00, 'Cybergate Services (Pvt) Ltd', '20', '15'),
('BK003', 'Database Book 3', 3000.00, 'Sathara Prakasakayo (Pvt) Ltd', '10', '2'),
('BK004', 'Database Book 4', 5000.00, 'Galle Printers (Pvt) Ltd', '10', '7'),
('BK005', 'Novel 1', 1500.00, 'Makeenbooks Pvt Ltd', '20', '10'),
('BK006', 'Novel 2', 1500.00, 'Galle Printers (Pvt) Ltd', '30', '10'),
('BK007', 'Educational Book 1', 2000.00, 'Cybergate Services (Pvt) Ltd', '20', '5'),
('BK008', 'Educational Book 2', 2500.00, 'Galle Printers (Pvt) Ltd', '25', '5'),
('BK009', 'children s novel', 3500.00, 'Sathara Prakasakayo (Pvt) Ltd', '5', '2'),
('OG001', 'Desk Lamp', 5000.00, 'ATLAS AXILLIA COMPANY PVT LTD', '25', '10'),
('OG002', 'White board', 10000.00, 'ATLAS AXILLIA COMPANY PVT LTD', '10', '5'),
('OG003', 'School bag', 5000.00, 'Printexel (Private) Limited', '10', '5'),
('OG004', 'Water bottle', 750.00, 'ATLAS AXILLIA COMPANY PVT LTD', '20', '5'),
('OG005', 'lunch boxes', 500.00, 'ATLAS AXILLIA COMPANY PVT LTD', '30', '10'),
('ST001', 'Notebooks', 300.00, 'Printexel (Private) Limited', '1000', '250'),
('ST002', 'pens', 20.00, 'ATLAS AXILLIA COMPANY PVT LTD', '2000', '1000'),
('ST003', 'paper', 10.00, 'ATLAS AXILLIA COMPANY PVT LTD', '5000', '2500'),
('ST004', 'Folders', 100.00, 'Printexel (Private) Limited', '500', '250'),
('ST005', 'staplers', 300.00, 'ATLAS AXILLIA COMPANY PVT LTD', '100', '75'),
('ST006', 'binders', 200.00, 'ATLAS AXILLIA COMPANY PVT LTD', '200', '125'),
('ST007', 'Markers', 150.00, 'Printexel (Private) Limited', '500', '50'),
('ST008', 'Erasers', 150.00, 'ATLAS AXILLIA COMPANY PVT LTD', '2000', '500'),
('ST009', 'Highliters', 150.00, 'Printexel (Private) Limited', '2000', '1000'),
('ST010', 'Rulers', 50.00, 'ATLAS AXILLIA COMPANY PVT LTD', '1000', '500');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_ID` varchar(10) NOT NULL,
  `Order_date` date NOT NULL,
  `Ordered_item` varchar(50) NOT NULL,
  `Ordered_quantities` int(10) NOT NULL,
  `Delivery_ID` int(10) NOT NULL,
  `Delivery_date` date NOT NULL,
  `Delivery_address` varchar(50) NOT NULL,
  `Customer_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_ID`, `Order_date`, `Ordered_item`, `Ordered_quantities`, `Delivery_ID`, `Delivery_date`, `Delivery_address`, `Customer_ID`) VALUES
('OD00101', '2023-02-02', 'Educational Book 1*1,Database Book 2*1,pens*20', 22, 120101, '2023-02-04', '1630/4, S.W. Perera Mawatha,Rajagiriya', 2023000010),
('OD00102', '2023-03-14', 'Database Book 3*1', 1, 120102, '2023-03-17', '237/2/10 Main Street 11,Colombo', 2023000002),
('OD00103', '2023-04-23', 'Notebooks*5,Folders*1,Highliters*2', 8, 120103, '2023-04-26', '135/6 Street, Josephs Stree,Colombo', 2023000001),
('OD00104', '2023-04-25', 'Educational Book 2*1,Database Book 4*1', 2, 120104, '2023-04-28', '1630/4, S.W. Perera Mawatha,Rajagiriya', 2023000010),
('OD00105', '2023-05-10', 'Educational Book 1*1,pens*20', 21, 120105, '2023-05-14', '237/2/10 Main Street 11,Colombo', 2023000002),
('OD00106', '2023-06-01', 'Lunch box*1', 1, 120106, '2023-06-05', '52 Street, Sebastian Mw Mirigama Road,Negambo', 2023000004),
('OD00107', '2023-07-30', 'Markers*5', 5, 120107, '2023-08-01', '1630/4, S.W. Perera Mawatha,Rajagiriya', 2023000010),
('OD00108', '2023-08-01', 'Paper*200', 200, 120108, '2023-08-05', 'No.20, Dutugamunu Street,Kohuwala', 2023000007),
('OD00109', '2023-08-04', 'Rulers*2,Database 1*2,Papers*20', 24, 120109, '2023-08-06', '135/6 Street, Josephs Stree,Colombo', 2023000001),
('OD00110', '2023-08-15', 'Water bottle*5', 5, 120110, '2023-08-17', '111 Galle Road, 04,Colombo', 2023000005),
('OD00111', '2023-08-24', 'Database Book 3*5,Novels 1*5', 10, 120111, '2023-08-28', 'No.20, Dutugamunu Street,Kohuwala', 2023000007),
('OD00112', '2023-09-02', 'School bag*1,staplers*5', 6, 120112, '2023-09-05', '81,2nd Cross Street 11,Colombo', 2023000006),
('OD00113', '2023-09-14', 'Pens200', 200, 120113, '2023-09-15', '923,E W Perera mawtha,Baththaramulla', 2023000008),
('OD00114', '2023-10-14', 'White board*2', 2, 120114, '2023-10-17', '135/6 Street, Josephs Stree,Colombo', 2023000001),
('OD00115', '2023-10-15', 'Database Book 3*5,Novels *5', 10, 120115, '2023-10-18', '131/3/A,Duplication Road,Colombo', 2023000009),
('OD00116', '2023-10-16', 'Notebooks*2,binders*2', 10, 120116, '2023-10-19', '135/6 Street, Josephs Stree,Colombo', 2023000001),
('OD00117', '2023-10-26', 'Notebooks*2,Novels 2*5,Desk Lamp*1,binders*2', 10, 120117, '2023-11-01', 'No.20, Dutugamunu Street,Kohuwala', 2023000007),
('OD00118', '2023-11-10', 'Children s novel 1*1,staplers*5', 6, 120118, '2023-11-13', 'No.20, Dutugamunu Street,Kohuwala', 2023000007);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` varchar(20) NOT NULL,
  `Payment_amount` decimal(10,2) NOT NULL,
  `Payment_date` date NOT NULL,
  `Payment_time` time DEFAULT NULL,
  `Bank_transfer_Flag` varchar(10) DEFAULT NULL,
  `Account_Holder_name` varchar(50) DEFAULT NULL,
  `Bank_name` varchar(50) DEFAULT NULL,
  `Bank_branch` varchar(20) DEFAULT NULL,
  `Online_Flag` varchar(10) DEFAULT NULL,
  `Cardholder_name` varchar(50) DEFAULT NULL,
  `Card_type` varchar(20) DEFAULT NULL,
  `Card_expiration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Payment_amount`, `Payment_date`, `Payment_time`, `Bank_transfer_Flag`, `Account_Holder_name`, `Bank_name`, `Bank_branch`, `Online_Flag`, `Cardholder_name`, `Card_type`, `Card_expiration`) VALUES
('PAY202302020001', 3400.00, '2023-02-02', '00:00:12', NULL, NULL, NULL, NULL, 'Yes', 'Hashan Weerathunga', 'Visa', '2025-12-31'),
('PAY202303140001', 3000.00, '2023-03-14', '00:00:13', 'Yes', 'Nimesh Costha', 'Sampath Bank', 'Dehiwala', NULL, NULL, NULL, NULL),
('PAY202304230001', 1900.00, '2023-04-23', '00:00:08', 'Yes', 'Senura Alwis', 'Peoples Bank', 'Wellawaththa', NULL, NULL, NULL, NULL),
('PAY202304250001', 7500.00, '2023-04-25', '00:00:09', 'Yes', 'Hashan Weerathunga', 'National Saving Bank', 'Rajagiriya', NULL, NULL, NULL, NULL),
('PAY202305100001', 2400.00, '2023-05-10', '00:00:10', NULL, NULL, NULL, NULL, 'Yes', 'Nimesh Costha', 'Master Card', '2026-12-31'),
('PAY202306010002', 500.00, '2023-06-01', '00:00:15', NULL, NULL, NULL, NULL, 'Yes', 'Dilaksha Vimukthi', 'Visa', '2027-12-31'),
('PAY202307300001', 750.00, '2023-07-30', '00:00:10', NULL, NULL, NULL, NULL, 'Yes', 'Hashan Weerathunga', 'Visa', '2025-12-31'),
('PAY202308010001', 2000.00, '2023-08-01', '00:00:16', 'Yes', 'Roshan Mendis', 'Commercial Bank', 'Kohuwala', NULL, NULL, NULL, NULL),
('PAY202308040001', 2300.00, '2023-08-04', '00:00:12', NULL, NULL, NULL, NULL, 'Yes', 'Senura Alwis', 'Visa', '2024-12-31'),
('PAY202308150001', 3750.00, '2023-08-15', '00:00:11', NULL, NULL, NULL, NULL, 'Yes', 'Dimuth Karunarathna', 'Master Card', '2026-12-31'),
('PAY202308240001', 22500.00, '2023-08-24', '00:00:14', 'Yes', 'Roshan Menndis', 'Commercial Bank', 'Kohuwala', NULL, NULL, NULL, NULL),
('PAY202309020001', 6500.00, '2023-09-02', '00:00:16', NULL, NULL, NULL, NULL, 'Yes', 'Ashan De Alwis', 'Master Card', '2026-12-31'),
('PAY202309140001', 4000.00, '2023-09-14', '00:00:13', 'Yes', 'Asanka Hewage', 'Sampath Bank', 'Baththaramulla', NULL, NULL, NULL, NULL),
('PAY202310140001', 20000.00, '2023-10-14', '00:00:08', 'Yes', 'Senura Alwis', 'People Bank', 'Wellawaththa', NULL, NULL, NULL, NULL),
('PAY202310150001', 22500.00, '2023-10-15', '00:00:12', NULL, NULL, NULL, NULL, 'Yes', 'Nuwani Alwis', 'Master Card', '2027-12-31'),
('PAY202310160001', 800.00, '2023-10-16', '00:00:13', 'Yes', 'Senura Alwis', 'People Bank', 'Wellawaththa', NULL, NULL, NULL, NULL),
('PAY202310260001', 13100.00, '2023-10-26', '00:00:09', NULL, NULL, NULL, NULL, 'Yes', 'Roshan Mendis', 'Master Card', '2026-12-31'),
('PAY202311100001', 5000.00, '2023-11-10', '00:00:14', 'Yes', 'Roshan Mendis', 'Commercial Bank', 'Kohuwala', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `Order_ID` varchar(10) NOT NULL,
  `Item_code` varchar(10) NOT NULL,
  `Payment_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`Order_ID`, `Item_code`, `Payment_ID`) VALUES
('OD00101', 'BK002', 'PAY202302020001'),
('OD00101', 'BK007', 'PAY202302020001'),
('OD00101', 'ST002', 'PAY202302020001'),
('OD00102', 'BK003', 'PAY202303140001'),
('OD00103', 'ST001', 'PAY202304230001'),
('OD00103', 'ST004', 'PAY202304230001'),
('OD00103', 'ST009', 'PAY202304230001'),
('OD00104', 'BK004', 'PAY202304250001'),
('OD00104', 'BK008', 'PAY202304250001'),
('OD00105', 'BK007', 'PAY202305100001'),
('OD00105', 'ST002', 'PAY202305100001'),
('OD00106', 'OG005', 'PAY202306010002'),
('OD00107', 'ST007', 'PAY202307300001'),
('OD00108', 'ST003', 'PAY202308010001'),
('OD00109', 'BK001', 'PAY202308040001'),
('OD00109', 'ST003', 'PAY202308040001'),
('OD00109', 'ST010', 'PAY202308040001'),
('OD00110', 'OG004', 'PAY202308150001'),
('OD00111', 'BK003', 'PAY202308240001'),
('OD00111', 'BK005', 'PAY202308240001'),
('OD00112', 'OG003', 'PAY202309020001'),
('OD00112', 'ST005', 'PAY202309020001'),
('OD00113', 'ST002', 'PAY202309140001'),
('OD00114', 'OG002', 'PAY202310140001'),
('OD00115', 'BK003', 'PAY202310150001'),
('OD00115', 'BK005', 'PAY202310150001'),
('OD00116', 'ST001', 'PAY202310160001'),
('OD00116', 'ST006', 'PAY202310160001'),
('OD00117', 'BK006', 'PAY202310260001'),
('OD00117', 'OG001', 'PAY202310260001'),
('OD00117', 'ST001', 'PAY202310260001'),
('OD00117', 'ST006', 'PAY202310260001'),
('OD00118', 'BK009', 'PAY202311100001'),
('OD00118', 'ST005', 'PAY202311100001');

-- --------------------------------------------------------

--
-- Table structure for table `stationary_item`
--

CREATE TABLE `stationary_item` (
  `Item_code` varchar(10) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Brand` varchar(20) DEFAULT NULL,
  `Details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationary_item`
--

INSERT INTO `stationary_item` (`Item_code`, `Category`, `Brand`, `Details`) VALUES
('ST001', 'Notebooks', 'ProMate', 'Classic ruled notebook, large size, black cover'),
('ST002', 'Pens', 'Atles', 'G2 gel pens, fine point, black ink, pack of 5'),
('ST003', 'Paper', 'Atles', 'Letter-size copy paper, 500 sheets, 20lb weight'),
('ST004', 'Folders', 'ProMate', 'Assorted color file folders, letter size, pack of '),
('ST005', 'Staplers', 'Atles', 'Desktop stapler with built-in staple remover'),
('ST006', 'Binders', 'Atles', 'Durable view binder, 1 inch, white, pack of 4'),
('ST007', 'Markers', 'ProMate', 'Dry erase markers, assorted colors, pack of 8'),
('ST008', 'Erasers', 'Atles', 'Hi-Polymer erasers, white, pack of 4'),
('ST009', 'Highlighters', 'ProMate', 'Assorted color highlighters, pack of 6'),
('ST010', 'Rulers', 'Atles', '12-inch clear plastic ruler, pack of 3');

-- --------------------------------------------------------

--
-- Table structure for table `supplied_item`
--

CREATE TABLE `supplied_item` (
  `Supplier_ID` varchar(10) NOT NULL,
  `Item_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplied_item`
--

INSERT INTO `supplied_item` (`Supplier_ID`, `Item_code`) VALUES
('SP0001', 'OG001'),
('SP0001', 'OG002'),
('SP0001', 'OG003'),
('SP0001', 'OG004'),
('SP0001', 'ST002'),
('SP0001', 'ST003'),
('SP0001', 'ST005'),
('SP0001', 'ST006'),
('SP0001', 'ST007'),
('SP0001', 'ST008'),
('SP0001', 'ST010'),
('SP0002', 'OG003'),
('SP0002', 'ST001'),
('SP0002', 'ST004'),
('SP0002', 'ST009'),
('SP0003', 'BK001'),
('SP0003', 'BK005'),
('SP0004', 'BK002'),
('SP0004', 'BK007'),
('SP0005', 'BK004'),
('SP0005', 'BK006'),
('SP0005', 'BK008'),
('SP0006', 'BK003'),
('SP0006', 'BK009');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_ID` varchar(10) NOT NULL,
  `Supplier_name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Indiciduals_Flag` varchar(10) DEFAULT NULL,
  `Skills_and_Expertise` varchar(100) DEFAULT NULL,
  `Professional_Qualifications` varchar(100) DEFAULT NULL,
  `Work_History` varchar(100) DEFAULT NULL,
  `Availability` varchar(100) DEFAULT NULL,
  `Companies_Flag` varchar(10) DEFAULT NULL,
  `Financial_Stability` varchar(100) DEFAULT NULL,
  `References_` varchar(100) DEFAULT NULL,
  `Insurance_Information` varchar(100) DEFAULT NULL,
  `Compliance_Certifications` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_ID`, `Supplier_name`, `Email`, `Address`, `Indiciduals_Flag`, `Skills_and_Expertise`, `Professional_Qualifications`, `Work_History`, `Availability`, `Companies_Flag`, `Financial_Stability`, `References_`, `Insurance_Information`, `Compliance_Certifications`) VALUES
('SP0001', 'ATLAS AXILLIA COMPANY PVT LTD', 'customerfeedback@atlasaxillia.com', '96, Parakrama Road, Old Kandy Rd, Peliyagoda 11830', NULL, NULL, NULL, NULL, NULL, 'Yes', 'Good', NULL, NULL, NULL),
('SP0002', 'Printexel (Private) Limited', 'info@promateworld.com', '164/4 Seelawimala Mawatha, 10150', NULL, NULL, NULL, NULL, NULL, 'Yes', 'Good', NULL, NULL, NULL),
('SP0003', 'Makeenbooks Pvt Ltd', 'info@makeenbooks.com', '441, Galle road, Colombo - 03, Colombo', NULL, NULL, NULL, NULL, NULL, 'Yes', 'Good', NULL, NULL, NULL),
('SP0004', 'Cybergate Services (Pvt) Ltd', 'print@cybergate.lk', '57A,Soratha Mw,Gangodawila,Nugegoda', NULL, NULL, NULL, NULL, NULL, 'Yes', 'Good', NULL, NULL, NULL),
('SP0005', 'Galle Printers (Pvt) Ltd', 'galleprint@gmail.com', '41 Suderis Silva Mw, Horana', NULL, NULL, NULL, NULL, NULL, 'Yes', 'Good', NULL, NULL, NULL),
('SP0006', ' Sathara Prakasakayo (Pvt) Ltd', 'sathara@sathara.com', '122,Awissawella Road,Maharagama', NULL, NULL, NULL, NULL, NULL, 'Yes', 'Good', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_item`
--
ALTER TABLE `book_item`
  ADD PRIMARY KEY (`Item_code`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Indexes for table `contact_number`
--
ALTER TABLE `contact_number`
  ADD PRIMARY KEY (`Supplier_ID`,`Contact_number`),
  ADD UNIQUE KEY `Contact_number` (`Contact_number`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Contact_number` (`Contact_number`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Item_code`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `o_cid_fk` (`Customer_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`Order_ID`,`Item_code`,`Payment_ID`),
  ADD KEY `r_icd_fk` (`Item_code`),
  ADD KEY `r_pid_fk` (`Payment_ID`);

--
-- Indexes for table `stationary_item`
--
ALTER TABLE `stationary_item`
  ADD PRIMARY KEY (`Item_code`);

--
-- Indexes for table `supplied_item`
--
ALTER TABLE `supplied_item`
  ADD PRIMARY KEY (`Supplier_ID`,`Item_code`),
  ADD KEY `si_icd_fk` (`Item_code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_item`
--
ALTER TABLE `book_item`
  ADD CONSTRAINT `bi_icd_fk` FOREIGN KEY (`Item_code`) REFERENCES `item` (`Item_code`);

--
-- Constraints for table `contact_number`
--
ALTER TABLE `contact_number`
  ADD CONSTRAINT `c_sid_fk` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `o_cid_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `r_icd_fk` FOREIGN KEY (`Item_code`) REFERENCES `item` (`Item_code`),
  ADD CONSTRAINT `r_oid_fk` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`),
  ADD CONSTRAINT `r_pid_fk` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`);

--
-- Constraints for table `stationary_item`
--
ALTER TABLE `stationary_item`
  ADD CONSTRAINT `s_icd_fk` FOREIGN KEY (`Item_code`) REFERENCES `item` (`Item_code`);

--
-- Constraints for table `supplied_item`
--
ALTER TABLE `supplied_item`
  ADD CONSTRAINT `si_icd_fk` FOREIGN KEY (`Item_code`) REFERENCES `item` (`Item_code`),
  ADD CONSTRAINT `si_sid_fk` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
