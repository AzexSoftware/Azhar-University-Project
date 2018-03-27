-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 02:39 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azhar-uni`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answerer_code` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `answer` text COLLATE utf8_bin,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `department` varchar(20) COLLATE utf8_bin NOT NULL,
  `start_date` date DEFAULT NULL,
  `weeks_number` int(2) DEFAULT NULL,
  `academic_year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `doctor_id`, `department`, `start_date`, `weeks_number`, `academic_year`) VALUES
(17, 'production', 5, '', NULL, NULL, NULL),
(18, 'chmistry', 5, '', NULL, NULL, NULL),
(19, 'physics', 5, '', NULL, NULL, NULL),
(20, 'math', 5, '', NULL, NULL, NULL),
(21, 'math', 6, '', NULL, NULL, NULL),
(22, 'chmistry', 6, '', NULL, NULL, NULL),
(23, 'math', 6, '', NULL, NULL, NULL),
(24, 'production', 6, '', NULL, NULL, NULL),
(25, 'production', 20, '', NULL, NULL, NULL),
(26, 'chmistry', 21, '', NULL, NULL, NULL),
(27, 'physics', 21, '', NULL, NULL, NULL),
(28, 'production', 30, '', NULL, NULL, NULL),
(29, 'math', 30, '', NULL, NULL, NULL),
(30, 'production', 30, '', NULL, NULL, NULL),
(31, 'math', 30, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses_content`
--

CREATE TABLE `courses_content` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `week_number` int(2) DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slides_pdf` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sheet` longblob,
  `quiz` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `material` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `courses_degrees`
--

CREATE TABLE `courses_degrees` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `quizes` int(11) DEFAULT NULL,
  `midterm` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `final_exam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `courses_students_results`
--

CREATE TABLE `courses_students_results` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `student_degree` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `phase` char(5) COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `current_position` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `certifications` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` char(7) COLLATE utf8_bin DEFAULT NULL,
  `phone_number` char(15) COLLATE utf8_bin DEFAULT NULL,
  `linked_in` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `github` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bio` text COLLATE utf8_bin,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `phase`, `first_name`, `last_name`, `current_position`, `certifications`, `gender`, `phone_number`, `linked_in`, `facebook`, `website`, `github`, `email`, `PASSWORD`, `bio`, `image`) VALUES
(5, NULL, 'mosaab', 'muhammed', 'Professor', 'PhD', 'male', '123124234', 'facebook.com', 'facebook.com', 'facebook.com', 'facebook.com', 'mosaabmuahmmed@gamil.com', '4123', 'bio bio bio', NULL),
(6, NULL, 'tiger', 'lion', 'Professro', 'asdf asdfasd', 'male', '123123', '', '', '', '', 'tiger@tiger.com', '123', 'this is my bio', NULL),
(15, NULL, 'asdf asdf', 'asdf adf', '', '', '', 'asdf asdf', '', '', '', '', 'tiger@tiger.coml', 'asdf adf', '', NULL),
(20, NULL, 'asdfa', 'asdfa', '', '', '', 'adsfasdf', '', '', '', '', 'tiger@tiger.com23', 'asdfasd', '', NULL),
(21, NULL, 'gigi', 'hooh', '', '', 'male', '01124121', '', '', '', '', 'eamil@email.com', '12312', 'asdf ads f', NULL),
(22, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(30, NULL, 'sdfa', 'asdffgh', '', '', '', 'qwerqe', '', '', '', '', 'ert@rt.com', 'awerwe', '', NULL),
(34, NULL, 'sdfa', 'asdffgh', '', '', '', '35', '', '', '', '', 'er22t@rt.com', 'awerwe', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `questioner_id` int(11) DEFAULT NULL,
  `week_number` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `st_code` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `academic_year` char(5) COLLATE utf8_bin DEFAULT NULL,
  `department` varchar(55) COLLATE utf8_bin NOT NULL,
  `gender` char(7) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `seat_number` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `national_id` char(14) COLLATE utf8_bin DEFAULT NULL,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `st_code`, `first_name`, `last_name`, `academic_year`, `department`, `gender`, `email`, `PASSWORD`, `seat_number`, `national_id`, `image`) VALUES
(1, NULL, 'sadf', 'adsfa', 'Secon', 'Computers', 'female', 'asdf@wsdf.com', 'asdf', NULL, 'asdf', NULL),
(3, NULL, 'sadf', 'adsfa', 'Secon', 'Computers', 'female', 'asdf@wsdf.com', 'asdf', NULL, '12312', NULL),
(4, NULL, 'first', 'second', 'Third', 'Electrical', 'male', 'first@first.com', '123', NULL, '123124234', NULL),
(21, NULL, 'asdf', 'adsf', 'First', 'Computers', 'male', 'asdf@wsdf.com2', 'asdf', NULL, '12312334266', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_question_fk` (`question_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_doctor_fk` (`doctor_id`);

--
-- Indexes for table `courses_content`
--
ALTER TABLE `courses_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_content_to_course_fk` (`course_id`);

--
-- Indexes for table `courses_degrees`
--
ALTER TABLE `courses_degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coureses_degrees_fk` (`course_id`);

--
-- Indexes for table `courses_students_results`
--
ALTER TABLE `courses_students_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degreesResults_to_course_fk` (`course_id`),
  ADD KEY `degreesResults_to_student_fk` (`student_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_course_fk` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `st_code` (`st_code`),
  ADD UNIQUE KEY `seat_number` (`seat_number`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `courses_content`
--
ALTER TABLE `courses_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses_degrees`
--
ALTER TABLE `courses_degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses_students_results`
--
ALTER TABLE `courses_students_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answer_question_fk` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `course_doctor_fk` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `courses_content`
--
ALTER TABLE `courses_content`
  ADD CONSTRAINT `course_content_to_course_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses_degrees`
--
ALTER TABLE `courses_degrees`
  ADD CONSTRAINT `coureses_degrees_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses_students_results`
--
ALTER TABLE `courses_students_results`
  ADD CONSTRAINT `degreesResults_to_course_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `degreesResults_to_student_fk` FOREIGN KEY (`student_id`) REFERENCES `students` (`st_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `question_course_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
