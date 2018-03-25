-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 02:46 AM
-- Server version: 10.1.30-MariaDB 
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dr-st-data`
--
CREATE DATABASE IF NOT EXISTS `dr-st-data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;

USE `dr-st-data`;
-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) CHARACTER SET latin1 NOT NULL UNIQUE,
  `first-name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `last-name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `conpass` varchar(100) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(100) CHARACTER SET latin1 NOT NULL,
  `academic-year` varchar(100) CHARACTER SET latin1 NOT NULL,
  `department` varchar(100) CHARACTER SET latin1 NOT NULL,
  `course` varchar(100) CHARACTER SET latin1 NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `student`
--
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first-name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `last-name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `conpass` varchar(100) CHARACTER SET latin1 NOT NULL,
  `academic-year` varchar(100) CHARACTER SET latin1 NOT NULL,
  `department` varchar(100) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(100) CHARACTER SET latin1 NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
