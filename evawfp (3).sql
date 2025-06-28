-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 07:10 PM
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
-- Database: `evawfp`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` int(11) NOT NULL,
  `attendee_name` varchar(100) NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`email`, `phone`, `adress`) VALUES
('support@bevent.com', '+01000000000', ' 2nd Floor, Main Street, Dhaka, Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id`, `title`, `message`) VALUES
(1, 'WELCOME', 'B Event Booking is your one-stop platform to manage, book, and track all types of events with ease. From venue selection to check-in and refund policies, our system ensures a smooth experience for everyone.');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`message`) VALUES
('Your booking for Tech Expo 2025 has been confirmed.'),
('A refund has been issued for Startup Summit'),
('New event added: AI Conference 2025.'),
('Reminder: Music Fest is scheduled for tomorrow.'),
('Promo code JUNE25 is now active with 25% discount'),
('Booking failed for Design Workshop due to a payment error.'),
('Your waitlist position for Marketing Bootcamp has been updated to position 3.');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `code`, `description`) VALUES
(1, 'WELCOME25', 'Get 25% off on your first booking!'),
(2, 'SAVE20', 'Save tk20 on any event booking above tk100.'),
(3, 'EVENT10', '\r\nFlat 10% off on selected event categories.'),
(4, 'GROUP5', 'Book 5+ tickets and get an extra 5% discount.');

-- --------------------------------------------------------

--
-- Table structure for table `refundpolicy`
--

CREATE TABLE `refundpolicy` (
  `policy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refundpolicy`
--

INSERT INTO `refundpolicy` (`policy`) VALUES
('Full refund available for cancellations made at least 7 days before the event.'),
('50% refund for cancellations made between 3–6 days before the event.'),
('No refunds for cancellations made less than 3 days before the event.'),
('Refunds will be processed within 5–7 business days.'),
('Booking fees are non-refundable in all cases.'),
('Refunds are only available for eligible bookings under the terms stated above.');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adress` text DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `capacity` int(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `adress`, `date_time`, `capacity`, `description`) VALUES
(3, 'Grand Convention Center', '\r\n123 Main Street, Mirpur, Dhaka\r\n\r\n\r\n\r\n\r\n', '2025-07-10 10:00:00', 200, 'Modern facility perfect for tech expos and startup events.'),
(4, 'Greenview Park Amphitheater', 'Baily Road, Dhaka\r\n\r\n\r\n', '2025-07-15 04:00:00', 250, 'Open-air venue for concerts and cultural festivals'),
(5, 'City Auditorium', '\r\n Block C, University Road, Chittagong\r\n\r\n\r\n', '2025-07-22 09:00:00', 250, '\r\nIdeal for conferences, academic, and seminar-style events.'),
(6, 'Sunset Beach Resort Hall\r\n\r\n\r\n', 'Highway, Chittagong', '2025-07-28 17:30:00', 200, 'Great for corporate parties and beach-themed evening shows'),
(7, 'Riverside Conference Hall', 'Blck-2, Gulshan\r\n\r\n\r\n\r\n', '2025-08-05 08:00:00', 100, 'Perfect for business meetings and seminars.');

-- --------------------------------------------------------

--
-- Table structure for table `waitlist`
--

CREATE TABLE `waitlist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `venue_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
