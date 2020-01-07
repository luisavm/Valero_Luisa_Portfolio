-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 05, 2020 at 01:33 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_works`
--

CREATE TABLE `tbl_works` (
  `ID` int(11) NOT NULL,
  `Including` varchar(90) NOT NULL,
  `Title` varchar(90) NOT NULL,
  `Des1` text NOT NULL,
  `Des2` text NOT NULL,
  `MyRole` varchar(90) NOT NULL,
  `Agency` varchar(90) NOT NULL,
  `Coll` varchar(140) NOT NULL,
  `Year` varchar(60) NOT NULL,
  `ImgD` varchar(90) NOT NULL,
  `ImgT` varchar(90) NOT NULL,
  `ImgM` varchar(90) NOT NULL,
  `LogoImg` varchar(90) NOT NULL,
  `Subt1` varchar(120) NOT NULL,
  `Img1` varchar(90) NOT NULL,
  `Subt2` varchar(120) NOT NULL,
  `Img2` varchar(90) NOT NULL,
  `Img1M` varchar(90) NOT NULL,
  `homeImg` varchar(30) NOT NULL,
  `bg_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_works`
--

INSERT INTO `tbl_works` (`ID`, `Including`, `Title`, `Des1`, `Des2`, `MyRole`, `Agency`, `Coll`, `Year`, `ImgD`, `ImgT`, `ImgM`, `LogoImg`, `Subt1`, `Img1`, `Subt2`, `Img2`, `Img1M`, `homeImg`, `bg_color`) VALUES
(1, 'Branding + Marketing + Adversiting', 'ORGANS REMADE', 'This is a school project with my team. The project is a marketing campaign for organ transplantation of laboratory organs. This process is pioneered by Harald Ott and his Harvard Medical Research team in the decellularization and recellularization.', 'My team and I explained how to produce the organ regeneration process, benefits for patients, and solutions. We focused on three different deliverables: branding, video, and brochure to target investors. \r\n', 'Designer', 'Organs ReMade', 'Mariam Khalifa\r\nKayla Chang', '2019', 'organs_macbook1.png', 'organs_macbook2.png', 'organs_macbook3.png', 'organs_logo.svg', '\r\nDESKTOP & TABLET RESPONSIVE SCREENS\r\n\r\n', 'organs_site1.png', 'BROCHURE', 'broc1.png', 'organs_site3.png', 'horgans_macbook1.png', 'fafafa'),
(2, 'Branding + App Design', '360 WORLD PIZZA', '360 World Pizza has travelled across nations, different take on pizza by different regions. Every region of the world has experimented with creating a signature pizza flavor. ', 'I designed logo and the app to determine the use of the application and its mode of delivery - UX & UI design elements/layouts/formats. The main goal is to present the information as cleanly and as organized. \r\n', 'Designer', '360 World Pizza', 'Kahani Gajjar  Renata Cunha', '2018', 'pizza_iphone_xs1.png', 'pizza_iphone_xs2.png', 'pizza_iphone_xs3.png', '360_pizza.svg', 'SMARTPHONE RESPONSIVE SCREENS', 'two_iphone_xs1.png', 'DESKTOP & TABLET RESPONSIVE SCREENS\r\n', 'pizza_devices1.png', 'v_iphone3.png', 'hpizza_iphone_xs1.png', 'fafafa'),
(3, 'Branding + Web Design', 'BOWERGROUPASIA', 'Through teamwork, we designed a new digital presence and enhanced BowerGroupAsia (BGA). The new design features vivid, colorful artwork and liberal use of white space. \r\n', 'I upgraded a new look for BGA branding in 2017. I designed the skylines and maps of most countries in Asia layout into a website for BGA, the government affairs, and a public policy consulting firm in the Asia-Pacific.', 'Designer', 'BowerGroupAsia', 'Samantha Bower', '2016-2017', 'bga_devices1.png', 'bga_devices2.png', 'bga_devices3.png', 'bga.svg', 'DESKTOP & TABLET RESPONSIVE SCREENS', 'bga_website1.png', 'BUSINESS CARD', 'bga_business_card1.png', 'v_website3.png', 'hbga_devices1.png', '487629'),
(4, 'Brand Identity', 'LIVELY JUICE', 'I presented my design capstone work on identity design and researched on business plan for Lively Juice. The brand is a new product consist in of a smoothie and juice bar under the brand name.\r\n', ' \r\n\r\nThe business is to make quality juice and smoothies with various juice and smoothie assortments including gluten-free and sugar-free smoothies for customers and to have original tastes including imported fruits from South America, such as tamarindo, lulo, and zapote. The logo’s branding signifies, vital, and active.', 'Designer', 'Lively Juice', 'None', '2015', 'lj_book1.png', 'lj_book2.png', 'lj_book3.png', 'lively_juice.svg', 'SPREADS', 'lj_spreads1.png', 'JUICE BOTTLES', 'juice_bottles1.png', 'v_spreads3.png', 'hjl_book1.png', '247649');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_works`
--
ALTER TABLE `tbl_works`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_works`
--
ALTER TABLE `tbl_works`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
