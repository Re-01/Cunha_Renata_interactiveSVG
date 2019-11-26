-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2019 at 07:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_infographic`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tips`
--

CREATE TABLE `tbl_tips` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tips`
--

INSERT INTO `tbl_tips` (`ID`, `Title`, `Image`, `Text`) VALUES
(1, 'NO high heels', 'icon highheels.svg', 'The feet are among the parts of \r\nthe body that suffer the most from work accidents. \r\nAccording to the INSS study, over 39,000 accidents \r\nwere recorded in the foot region, except for the toes. \r\nThis places this region of the body as the \r\n2nd that suffers most work accidents.'),
(2, 'NO white pants', 'icon pans.svg', 'By wearing white pants while you are taking care of a \r\nchild you have a 50% higher chance of \r\ngetting dirty compared to wearing \r\ncolorful clothes. So be careful.'),
(3, 'HAVE a pacifier', 'icon pacifier.svg', 'An agreement with a recent  study released by \r\nthe American Academy of Pediatrics, the pacifier \r\nuse by children between \r\n1 and  12 months of age, may prevent \r\nthe risk of sudden death.'),
(4, 'HAVE markers', 'icon markers.svg', 'As the child draws, she develops various skills. \r\nControlling a pencil or crayon in a \r\ntweezing movement develops motor coordination. \r\nThis happens from the age of 3, when the \r\nchild moves from doodling to more meaningful drawing.'),
(5, 'HAVE wipes', 'icon wipes.svg', 'Made especially for the skin care of babies,\r\n some baby wipeshave a soft and delicate touch \r\nas they have over 90% water in their composition. \r\nIn addition, they have no fragrance, \r\nso as not to cause strangeness in the little ones.\r\nIdeal for use as early as the baby\'s first months of life.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_tips`
--
ALTER TABLE `tbl_tips`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tips`
--
ALTER TABLE `tbl_tips`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
