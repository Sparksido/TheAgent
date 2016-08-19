-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2016 at 09:03 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theagent`
--

-- --------------------------------------------------------

--
-- Table structure for table `appauth`
--

CREATE TABLE `appauth` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appauth`
--

INSERT INTO `appauth` (`name`, `username`, `password`) VALUES
('Mopati Bogatsu', 'Mopati', 'Password'),
('Tumisang molebatsi', 'Tumi', 'mole'),
('Tumisang molebatsi', 'Tumi', 'mole'),
('Theo', 'Theo', 'Walcott'),
('Mopati Bogatsu', 'Mopati', 'Pass'),
('Tlotlo Serai', 'Tlo', 'weapon'),
('boitumelo bogatsu', 'thobo', '2005'),
('Kokamo Kalai', 'Kuks', 'cookie'),
('Tumisang molebatsi', 'TumisangMolebatsi13', 'socksaretheish'),
('deletable', 'deletable', 'deletable'),
('Tebogo Sekgwagetsi', 'Tbaby', 'tebza'),
('deletable', 'delete', 'goaheadanddelete'),
('deletable', 'ctrlx', 'deletable'),
('Kagiso Lefoko', 'KG', 'Skhejo');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `qualifiation` varchar(50) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `skills` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`name`, `category`, `qualifiation`, `fileName`, `email`, `skills`) VALUES
('Mopati Bogatsu', 'Engineering', 'Mechatronics', 'files/Mopati Bogatsu - Resume...pdf', 'mopatib@gmail.com', 'a:4:{i:0;s:6:"Design";i:1;s:13:"Manufacturing";i:2;s:11:"electronics";i:3;s:8:"software";}'),
('Tumisang molebatsi', 'Business', 'Business management', 'files/UPDATED C.L 4 IEC.docx', 'tumimole@gmail.com', 'a:4:{i:0;s:10:"management";i:1;s:8:"analysis";i:2;s:7:"finance";i:3;s:9:"appraisal";}'),
('Tumisang molebatsi', 'Business', 'Business management', 'files/UPDATED C.L 4 IEC.docx', 'tumimole@gmail.com', 'a:4:{i:0;s:10:"management";i:1;s:8:"analysis";i:2;s:7:"finance";i:3;s:9:"appraisal";}'),
('Theo', 'Engineering', 'Bogatsu', 'files/Digital signage notes.docx', 'theo@gmail.com', 'a:4:{i:0;s:6:"Design";i:1;s:10:"technology";i:2;s:8:"analysis";i:3;s:6:"survey";}'),
('Mopati Bogatsu', 'Engineering', 'Mechatronics', 'files/Patrick4.xlsx', 'mopatib@gmail.com', 'a:4:{i:0;s:6:"Design";i:1;s:13:"Manufacturing";i:2;s:11:"electronics";i:3;s:8:"software";}'),
('Tlotlo Serai', 'Practical', 'Diamond cutting and Polishing', 'files/Patrick.xlsx', 'tserai@gmail.com', 'a:4:{i:0;s:15:"Diamond cutting";i:1;s:9:"Polishing";i:2;s:12:"Coordinating";i:3;s:8:"Planning";}'),
('boitumelo bogatsu', 'Customer service', 'Cambridge', 'files/Cover letter for UNICEF.docx', 'bbogatsu@botswanapost.co.bw', 'a:4:{i:0;s:17:"Customer service ";i:1;s:14:"Microsoft word";i:2;s:15:"Microsoft excel";i:3;s:8:"Planning";}'),
('Kokamo Kalai', 'Science', 'Mathematics', 'files/Digital signage notes.docx', 'kkalai@gmail.com', 'a:4:{i:0;s:8:"Analysis";i:1;s:11:"Forecasting";i:2;s:8:"Planning";i:3;s:10:"Management";}'),
('Tumisang molebatsi', 'Business', 'igcse', 'files/Curriculum vitae Tumisang Molebatsi.docx', 'tumisangmolebatsi13@gmail.com', 'a:4:{i:0;s:15:"mirosoft office";i:1;s:10:"accounting";i:2;s:0:"";i:3;s:0:"";}'),
('deletable', 'Mathematics', 'deletable', 'files/Patrick1.xlsx', 'deletable', 'a:4:{i:0;s:6:"delete";i:1;s:7:"deleted";i:2;s:16:"dewaitforitleted";i:3;s:8:"deleting";}'),
('Tebogo Sekgwagetsi', 'Engineering', 'Electrical and Electronics Engineering', 'files/Umlilo Soccer Academy Proposal.docx', 'tsekgwagetsi@gmail.com', 'a:4:{i:0;s:14:"Circuit design";i:1;s:15:"troubleshooting";i:2;s:8:"assembly";i:3;s:11:"fabrication";}'),
('deletable', 'engineering', 'deletable', 'files/timetable.docx', 'delete@gmail.com', 'a:4:{i:0;s:6:"delete";i:1;s:7:"deleted";i:2;s:8:"deleting";i:3;s:5:"ctrlx";}'),
('deletable', 'engineering', 'delete', 'files/Business managent 2.docx', 'delete@gmail.com', 'a:4:{i:0;s:6:"sutlha";i:1;s:7:"deleted";i:2;s:8:"deleting";i:3;s:5:"ctrlx";}'),
('Kagiso Lefoko', 'Business', 'Bachelor of Finance', 'files/APA-6th-handout-Apr-20121.pdf', 'klefoko@gmail.com', 'a:4:{i:0;s:18:"Financial Analysis";i:1;s:8:"Auditing";i:2;s:20:"Strategic Management";i:3;s:9:"Marketing";}');

-- --------------------------------------------------------

--
-- Table structure for table `empauth`
--

CREATE TABLE `empauth` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empauth`
--

INSERT INTO `empauth` (`name`, `username`, `password`) VALUES
('Sparks', 'enterprise', 'lead'),
('Barloworld', 'Barloworld', 'oil'),
('Barloworld', 'Barloworld', 'oil'),
('Orange', 'orange', 'namune'),
('Botswana Meat Commission', 'BMC', 'nama'),
('Botswana Meat Commission', 'BMC', 'nama'),
('Botswana Meat Commission', 'BMC', 'nama'),
('Botswana Meat Commission', 'BMC', 'nama'),
('Botswana Meat Commission', 'BMC', 'nama'),
('Ministry of Education', 'MoE', 'thuto'),
('Ministry of Transport and Communications', 'MoTC', 'movers'),
('Ministry of Transport and Communications', 'MoTC', 'movers'),
('Ministry of Transport and Communications', 'MoTC', 'movers'),
('Ministry of Transport and Communications', 'MoTC', 'movers'),
('Ministry of Transport and Communication', 'MoTC', 'movers'),
('Ministry of Transport and Communication', 'MoTC', 'movers');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `link` varchar(150) NOT NULL,
  `jobs` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`name`, `category`, `product`, `link`, `jobs`) VALUES
('Barloworld', 'Engineering', 'Vehicle Service', 'blah', ''),
('Barloworld', 'Engineering', 'Vehicle Service', 'blah', ''),
('Orange', 'Business', 'Telecommunications', 'blah blah', ''),
('Botswana Meat Commission', 'Business', 'Meat Products', '', ''),
('Botswana Meat Commission', 'Business', 'Meat Products', '', ''),
('Botswana Meat Commission', 'Business', 'Meat Products', '', ''),
('Botswana Meat Commission', 'Business', 'Meat Products', '', ''),
('Botswana Meat Commission', 'Business', 'Meat Products', '', ''),
('Ministry of Education', 'Government', 'Administration', '', ''),
('Ministry of Transport and Communications', 'Administration', 'Administration', '', ''),
('Ministry of Transport and Communications', 'Administration', 'Administration', '', ''),
('Ministry of Transport and Communications', 'Administration', 'Administration', '', ''),
('Ministry of Transport and Communications', 'Administration', 'Administration', '', ''),
('Ministry of Transport and Communication', 'Administration', 'Administration', '', ''),
('Ministry of Transport and Communication', 'Administration', 'Administration', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `company` varchar(50) NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `fileName` varchar(70) NOT NULL,
  `category` varchar(50) NOT NULL,
  `count` int(100) NOT NULL,
  `postDate` date NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`company`, `jobTitle`, `fileName`, `category`, `count`, `postDate`, `deadline`) VALUES
('enterprise', 'Strutural engineer', 'files/enterprise_Strutural engineer', 'Engineering', 0, '2015-11-30', '0000-00-00'),
('enterprise', 'iil engineer', 'files/enterprise_iil engineer', 'Engineering', 0, '2015-11-30', '2015-12-17'),
('Barloworld', 'Electrical Specialist', 'files/Barloworld_Electrical Specialist', 'Engineering', 0, '2015-12-01', '2015-12-10'),
('orange', 'Shop Supervisor Phikwe', 'files/orange_Shop Supervisor Phikwe', 'Business', 0, '2015-12-02', '2015-12-15'),
('enterprise', 'Management', 'files/enterprise_Management', 'Business', 0, '2015-12-04', '2015-12-05'),
('enterprise', 'designer', 'files/enterprise_designer', 'Engineering', 0, '2015-12-04', '2015-12-20'),
('BMC', 'Sales and Marketing Manager', 'files/BMC_MM', 'Business', 0, '2015-12-05', '2015-12-11'),
('BMC', 'Plant Engineer', 'files/BMC_Plant Engineer', 'Engineering', 0, '2015-12-06', '2015-12-11'),
('BMC', 'Stratgy Manager', 'files/BMC_Stratgy Manager', 'Business', 0, '2015-12-06', '2015-12-11'),
('BMC', 'Communication Officer', 'files/BMC_Communication Officer', 'Social Sciences', 0, '2015-12-06', '2015-12-11'),
('MoE', 'Principal Tecnical Education officer ii', 'files/MoE_Principal Tecnical Education officer ii', 'Practical', 0, '2015-12-06', '2015-12-12'),
('MoE', 'Head of Deparment (Building and Civil Engineering)', 'files/MoE_Head of Deparment (Building and Civil Engineering) Botswana ', 'Engineering', 0, '2015-12-06', '2015-12-12'),
('MoE', 'Head of Department (Heavy equipment)', 'files/MoE_Head of Department (Heavy equipment)', 'Engineering', 0, '2015-12-06', '2015-12-12'),
('MoE', 'HEAD OF DEPARTMENT(APPLIED MATHEMATICS AND SCIENCE', 'files/MoE_HEAD OF DEPARTMENT(APPLIED MATHEMATICS AND SCIENCE)', 'Mathematics', 0, '2015-12-08', '2015-12-12'),
('', 'Deputy Manager Procurement', 'files/_Deputy Manager Procurement', 'Administration', 0, '2015-12-09', '2015-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers`
--

CREATE TABLE `jobseekers` (
  `jobName` varchar(50) NOT NULL,
  `appName` varchar(50) NOT NULL,
  `resumeName` varchar(150) NOT NULL,
  `certificateName` varchar(150) NOT NULL,
  `omangName` varchar(150) NOT NULL,
  `coverLetterDirection` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseekers`
--

INSERT INTO `jobseekers` (`jobName`, `appName`, `resumeName`, `certificateName`, `omangName`, `coverLetterDirection`) VALUES
('Shop Supervisor Phikwe', 'Tumi', 'Tumi-resume', '', '', ''),
('Shop Supervisor Phikwe', 'Tumi', 'Tumi-resume', '', '', ''),
('Shop Supervisor Phikwe', 'Kagiso Lefoko', 'Kagiso Lefoko-resume', '', '', ''),
('Strutural engineer', 'Mopati', 'Mopati-resume', '', '', ''),
('Strutural engineer', 'Mopati', 'Mopati-resume', '', '', ''),
('Strutural engineer', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', '', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', ''),
('', 'Mopati', 'Mopati-resume', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
