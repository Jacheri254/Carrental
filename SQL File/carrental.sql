-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2024-05-01 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `booking_number` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_email`, `booking_number`, `transaction_id`, `amount`, `status`, `created_at`) VALUES
(1, 'erickkim254@gmail.com', '244855781', 'ws_CO_22022025153716270796046123', 9000.00, 'Pending', '2025-02-22 12:35:59'),
(2, 'erickkim254@gmail.com', '244855781', 'ws_CO_22022025153857892795476835', 9000.00, 'Pending', '2025-02-22 12:37:51'),
(3, 'erickkim254@gmail.com', '244855781', 'ws_CO_24022025103818256795476835', 9000.00, 'Pending', '2025-02-24 07:38:20'),
(4, 'jacheri@gmail.com', '396775820', 'ws_CO_24022025135115017743235581', 8000.00, 'Pending', '2025-02-24 10:51:17'),
(5, 'erickkim254@gmail.com', '244855781', 'ws_CO_03032025142722967796046123', 9000.00, 'Pending', '2025-03-03 11:27:24'),
(6, 'erickkim254@gmail.com', '244855781', 'ws_CO_12032025112517758796046123', 9000.00, 'Pending', '2025-03-12 08:25:20'),
(7, 'erickkim254@gmail.com', '244855781', 'ws_CO_12032025114824855796046123', 9000.00, 'Pending', '2025-03-12 08:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 443108139, 'amikt12@gmail.com', 2, '2024-06-08', '2024-06-10', 'I want booking', 1, '2024-06-05 05:32:39', '2024-06-05 05:34:08'),
(2, 244855781, 'erickkim254@gmail.com', 2, '2025-01-29', '2025-01-31', 'i want tydtdryuterytftdtr6ewuutrstuesuertr', 1, '2025-01-28 08:02:57', '2025-02-05 20:45:49'),
(3, 713934555, 'erickkim254@gmail.com', 9, '2025-02-06', '2025-02-13', ' xcmbcmbcjbcmbcbnbkzxn.,anchvkSdjkckjbvkklalsknjkdchsdvjkbacjbvjhgscgbaskjhclaScvl', 1, '2025-02-05 21:16:18', '2025-02-05 21:19:35'),
(4, 256598491, 'erickkim254@gmail.com', 2, '2025-02-18', '2025-02-25', 'vsjbjsdfgjkhffkdjfgudfkjqebfdmbmfjdgfjddgkheflfjdsgfdgfi', 0, '2025-02-18 16:06:13', NULL),
(5, 977056974, 'erickkim254@gmail.com', 9, '2025-02-22', '2025-02-25', 'I would wish to have this car from tomorrow up to 25th  feb', 0, '2025-02-22 10:20:01', NULL),
(6, 396775820, 'jacheri@gmail.com', 11, '2025-02-24', '2025-02-26', 'I would really want this ride ', 0, '2025-02-24 10:50:21', NULL),
(7, 841928872, 'jacheri@gmail.com', 2, '2025-02-27', '2025-03-01', 'ghhghvhgghghgjgghgghghgyg', 0, '2025-02-27 08:55:20', NULL),
(8, 398564350, 'erickkim254@gmail.com', 3, '2025-02-28', '2025-03-04', 'I would be wanting to purchase ride for the indicated days ', 0, '2025-02-28 08:52:37', NULL),
(9, 150971794, 'erickkim254@gmail.com', 11, '2025-03-03', '2025-03-04', 'I want this ride ', 0, '2025-03-03 11:26:43', NULL),
(10, 816755333, 'kevo@gmail.com', 11, '2025-03-10', '2025-03-13', 'daeldshlhgndnsnv,nvkhskhgldkhg', 0, '2025-03-10 08:36:41', NULL),
(11, 473643678, 'erickkim254@gmail.com', 29, '2025-03-10', '2025-03-13', 'hhjghhfjudjyyyyyyyyyyydtcghh', 0, '2025-03-10 08:45:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2024-05-01 16:24:34', '2024-06-05 05:26:25'),
(2, 'BMW', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(3, 'Audi', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(4, 'Nissan', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(5, 'Toyota', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(7, 'Volkswagon', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(8, 'Volvo', '2025-01-17 08:24:23', NULL),
(9, 'Mazda', '2025-01-17 08:34:53', NULL),
(10, 'Subaru', '2025-01-25 08:30:08', NULL),
(11, 'MERCEDES ', '2025-01-25 08:33:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Auto lease pro ,Kiambu road ,Nairobi', 'infoautoleasepro@gmail.com', '0796046234');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kimani ', 'kimani@gmail.com', '7977779798', 'I want to know you branch in Nakuru?', '2025-02-04 09:34:51', 1),
(2, 'Eric kimani ', 'erickkim254@gmail.com', '0796046234', 'what will be the way out if the car I rented has a mechanical attention', '2025-02-28 09:22:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font></strong></font></p><p><strong>1. Booking and Payment</strong><br>1.1. All vehicle bookings must be made through our website or authorized channels.<br>1.2. A valid credit/debit card is required for booking confirmation and security deposit purposes.<br>1.3. Full payment is required before the rental period begins.<br>1.4. Prices are subject to change without prior notice but will not affect confirmed bookings.</p><p><strong>2. Driver Requirements</strong><br>2.1. The minimum age to rent a vehicle is 21 years. Additional charges may apply for drivers under 25.<br>2.2. A valid driver’s license and government-issued ID or passport must be presented at the time of pickup.<br>2.3. Only the registered driver(s) listed on the rental agreement are allowed to operate the vehicle.</p><p><strong>3. Insurance and Liability</strong><br>3.1. All rental vehicles include basic insurance coverage as per our policy.<br>3.2. Additional insurance options can be purchased for greater coverage and reduced liability.<br>3.3. The renter is responsible for any damage or loss exceeding the insurance coverage limits.<br>3.4. In the event of an accident, the renter must report the incident immediately and follow the necessary procedures.</p><p><strong>4. Vehicle Usage</strong><br>4.1. The vehicle must be used for personal or business transportation purposes only.<br>4.2. The vehicle must not be used for illegal activities, racing, off-road driving, or towing.<br>4.3. The renter must comply with all traffic laws and regulations while operating the vehicle.<br>4.4. Smoking and transporting pets in the vehicle are prohibited unless specified otherwise.</p><p><strong>5. Fuel Policy</strong><br>5.1. Vehicles are provided with a full tank of fuel and must be returned with a full tank.<br>5.2. If the vehicle is returned with less fuel, refueling charges will apply based on current fuel rates.</p><p><strong>6. Mileage Limits</strong><br>6.1. The rental includes a daily mileage limit as specified in the rental agreement.<br>6.2. Exceeding the mileage limit will incur additional charges per kilometer/mile.</p><p><strong>7. Rental Modifications and Extensions</strong><br>7.1. Rental extensions are subject to vehicle availability and must be requested in advance.<br>7.2. Any modifications or cancellations are subject to our cancellation policy, which may include applicable fees.</p><p><strong>8. Breakdown and Roadside Assistance</strong><br>8.1. 24/7 roadside assistance is provided during the rental period in case of breakdowns.<br>8.2. The renter must contact the support team immediately in case of any mechanical failure.<br>8.3. Costs related to renter-induced damage (e.g., flat tires due to negligence) will be charged accordingly.</p><p><strong>9. Return Policy</strong><br>9.1. Vehicles must be returned on the agreed date, time, and location as per the rental agreement.<br>9.2. Late returns will incur additional charges based on the rental duration.<br>9.3. Any damage to the vehicle upon return will be assessed, and repair costs may be deducted from the security deposit.</p><p><strong>10. Restrictions on Vehicle Use</strong><br>10.1. Vehicles may only be driven within the authorized geographical area specified in the rental agreement.<br>10.2. International travel with the rental vehicle requires prior written approval and additional insurance coverage.</p><p><strong>11. Security Deposit</strong><br>11.1. A refundable security deposit is required at the start of the rental and will be refunded upon satisfactory vehicle return.<br>11.2. Any damages, fines, or additional charges will be deducted from the deposit.</p><p><strong>12. Cancellation Policy</strong><br>12.1. Cancellations made 48 hours before the rental start date are eligible for a full refund.<br>12.2. Late cancellations or no-shows may be subject to a cancellation fee as outlined in the booking terms.</p><p><strong>13. Privacy Policy</strong><br>13.1. Personal information provided during booking is securely stored and will not be shared with third parties without consent.<br>13.2. By using our services, you agree to our privacy policy governing data collection and usage.</p><p><strong>14. Governing Law</strong><br>14.1. These terms and conditions are governed by the laws of Kenya, and any disputes will be resolved in the respective jurisdiction.</p><p><strong>15. Contact Information</strong><br>For any inquiries or support, please contact our customer service 0796046234.</p><p align=\"justify\"><font size=\"2\"><strong><br></strong><br></font></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										At AutoLease Pro, we are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and safeguard your personal information when you use our website and services for vehicle rentals. We collect personal details such as your name, contact information, driver’s license details, and payment information to process bookings, verify identity, and provide customer support. Non-personal data, such as browser type, IP address, and cookies, may also be collected to improve website functionality and user experience. Your information is used to facilitate our services, comply with legal requirements, and provide personalized offers if you opt-in. We do not sell or trade your data; however, we may share it with trusted service providers, such as payment processors and insurance companies, to fulfill your rental needs. We implement stringent security measures, including SSL encryption and restricted access, to protect your data from unauthorized access. Our website uses cookies to enhance your browsing experience, and you can manage these through your browser settings. You have rights to access, correct, or request deletion of your data, and you can opt out of marketing communications at any time by contacting us at info@gmail.com. We retain your information only as long as necessary to fulfill our services and comply with legal obligations. Our website may contain links to third-party sites, and we encourage you to review their privacy policies, as we are not responsible for their practices. We may update this policy periodically, and any changes will be posted on our website. For any questions or concerns, please contact us at 0796046234.\r\n										'),
(3, 'About Us ', 'aboutus', '										<span style=\"font-weight: bold;\"><span style=\"color: rgb(51, 51, 51); font-size: medium; font-family: arial;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.</span><span style=\"font-size: small;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span></span></span><div><span style=\"color: rgb(62, 62, 62); font-size: 11px; font-family: &quot;courier new&quot;;\">Y</span><span style=\"color: rgb(62, 62, 62); font-size: small; font-family: &quot;courier new&quot;;\">our mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>\r\n										'),
(11, 'FAQs', 'faqs', '<p><strong>1. How can I book a vehicle on your website?</strong><br>You can book a vehicle by selecting your preferred car, choosing the rental dates, and completing the booking form with your details. Payments can be made securely through support and visit to the office.</p><p><strong>2. What documents do I need to rent a car?</strong><br>You will need a valid driver’s license, a government-issued ID or passport, and a credit/debit card for payment and security deposit at the office.</p><p><strong>3. Is there a minimum age requirement to rent a vehicle?</strong><br>Yes, the minimum age to rent a vehicle is typically 20 years, but it may vary depending on the car category. Additional charges and considerations may apply for drivers under 25.</p><p><strong>4. Do you offer insurance coverage with the rental?</strong><br>Yes, all our rentals include basic insurance coverage. Additional coverage options such as comprehensive insurance can be purchased for extra protection.</p><p><strong>5. Can I modify or cancel my booking?</strong><br>No, you can\'t modify or cancel your booking through your account dashboard. Cancellation policies and fees may apply depending on how close to the pickup date you cancel but you can get in touch with the admin.</p><p><strong>6. Are there any mileage limits on the rental?</strong><br>Most of our vehicles come with a daily mileage limit. Additional mileage will incur extra charges. Please check the terms for your selected vehicle.</p><p><strong>7. What happens if the car breaks down during my rental period?</strong><br>We offer 24/7 roadside assistance to ensure you get back on the road as soon as possible. Contact our support team for immediate assistance.</p><p><strong>8. Can I extend my rental period?</strong><br>Yes, you can extend your rental period by contacting us before your rental expires. Additional charges may apply based on availability.</p><p><strong>9. Do you provide fuel with the rental vehicle?</strong><br>Our vehicles are provided with a full tank of fuel, and you are required to return them with a full tank. If not, refueling charges will apply.</p><p><strong>10. Are there any restrictions on where I can drive the rental vehicle?</strong><br>Yes, our vehicles are generally restricted to domestic use within specific regions. International travel may require special authorization and insurance.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'erickkim254@gmail.com', '2025-01-26 10:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'John', 'john12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '0725365214', NULL, NULL, NULL, NULL, '2025-01-08 05:31:05', NULL),
(3, 'Eric kimani ', 'erickkim254@gmail.com', 'dc1d02f604ea8b7889100c7192e8e429', '0796046233', NULL, 'Kimathi street', 'Nairobi', 'Kenya ', '2025-01-17 12:27:08', NULL),
(4, 'Jayden kimani', 'Jacheri@gmail.com', 'b871e30870cf1a3b18d5b40658512235', '0745286275', NULL, NULL, NULL, NULL, '2025-02-24 10:46:29', NULL),
(5, 'Jayden', 'kinch@gmail.com', 'dc1d02f604ea8b7889100c7192e8e429', '0745286275', NULL, NULL, NULL, NULL, '2025-02-27 16:00:39', NULL),
(6, 'Jayden', 'kevo@gmail.com', 'a4c08e67e5343fd1bebc82446bd4fec2', '0745286275', NULL, NULL, NULL, NULL, '2025-03-10 08:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(2, 'BMW 5 Series', 2, '\r\nThe BMW 5 Series is a luxury mid-size sedan known for its elegant design, powerful performance, and advanced technology. It offers a spacious, high-quality interior and comes in petrol and diesel variants for a smooth, dynamic drive. ', 4500, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2025-01-29 13:54:31'),
(3, 'Audi Q8', 3, 'The Audi Q8 is a luxury SUV with a sleek coupe-like design and a high-tech, premium interior. It offers powerful engine options, including a 3.0L V6 TFSI petrol (2995cc) and 3.0L V6 TDI diesel (2967cc). With quattro all-wheel drive and adaptive suspension, it delivers a refined yet sporty performance.  Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 4200, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2025-01-29 13:57:24'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 3500, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-10 07:04:35', '2025-01-17 08:17:39'),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.Under the hood, it is powered by a 1.5L 4-cylinder petrol engine (1498cc), offering a balance of performance and efficiency. With its reliable build, practical features, and low maintenance costs, the Nissan Sunny is a great budget-friendly choice. ????????', 3000, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2025-01-29 13:59:52'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 3000, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-05-10 07:04:35', '2025-01-17 08:19:37'),
(9, 'Note', 4, 'The Nissan Note is a compact hatchback known for its stylish design, fuel efficiency, and spacious interior, offering practicality for daily commuting and family use.', 3000, 'Petrol', 2017, 5, 'WhatsApp Image 2025-01-15 at 12.05.04.jpeg', 'WhatsApp Image 2025-01-15 at 12.05.02.jpeg', 'WhatsApp Image 2025-01-15 at 12.05.01.jpeg', 'WhatsApp Image 2025-01-15 at 12.05.02 (1).jpeg', 'WhatsApp Image 2025-01-15 at 12.05.03.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2025-01-17 08:14:42', NULL),
(10, 'Probox', 5, 'The Toyota Probox is a compact, reliable, and fuel-efficient vehicle, popular for its practicality and spacious interior, often used for business and personal transport.', 2500, 'Diesel', 2017, 4, 'WhatsApp Image 2025-01-15 at 11.30.32.jpeg', 'WhatsApp Image 2025-01-15 at 11.30.33.jpeg', 'WhatsApp Image 2025-01-15 at 11.30.33 (1).jpeg', 'WhatsApp Image 2025-01-15 at 11.30.33 (2).jpeg', 'WhatsApp Image 2025-01-15 at 11.30.34.jpeg', NULL, 1, NULL, 1, 1, 1, NULL, NULL, 1, NULL, 1, NULL, '2025-01-17 08:23:52', NULL),
(11, 'Volvo S90', 8, 'Volvo cars are known for their sleek design, advanced safety features, and premium comfort, offering a blend of performance and reliability.', 4000, 'Petrol', 2019, 5, 'WhatsApp Image 2025-01-15 at 21.36.35.jpeg', 'WhatsApp Image 2025-01-15 at 21.36.37.jpeg', 'WhatsApp Image 2025-01-15 at 21.36.37 (1).jpeg', 'WhatsApp Image 2025-01-15 at 21.36.36.jpeg', 'WhatsApp Image 2025-01-15 at 21.36.37.jpeg', 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, 1, 1, '2025-01-17 08:26:28', NULL),
(12, 'CX-5', 9, 'The Mazda CX-5 is a stylish and compact SUV known for its sleek design, agile handling, fuel efficiency, and comfortable interior, offering a balance of performance and practicality.', 3800, 'Diesel', 2019, 5, 'WhatsApp Image 2025-01-17 at 11.29.57.jpeg', 'WhatsApp Image 2025-01-17 at 11.29.57 (1).jpeg', 'WhatsApp Image 2025-01-17 at 11.29.57 (2).jpeg', 'WhatsApp Image 2025-01-17 at 11.29.58.jpeg', 'WhatsApp Image 2025-01-17 at 11.29.58 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '2025-01-17 08:45:54', NULL),
(13, 'Polo', 7, 'The Volkswagen Golf is a versatile and compact hatchback known for its reliable performance, refined design, fuel efficiency, and comfortable driving experience, ideal for both city and highway use.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 4000, 'Petrol', 2016, 4, 'WhatsApp Image 2025-01-17 at 11.29.58 (3).jpeg', 'WhatsApp Image 2025-01-17 at 11.29.59.jpeg', 'WhatsApp Image 2025-01-17 at 11.29.59 (1).jpeg', 'WhatsApp Image 2025-01-17 at 11.29.59 (2).jpeg', 'WhatsApp Image 2025-01-17 at 11.29.59.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2025-01-17 09:00:57', NULL),
(14, 'Auris', 5, 'Toyota Auris being the most comfortable and excellent car you can purchase for your daily activities to serve you with low maintenance cost and minimal fuel consumption fuel having a 1500cc.', 2500, 'Petrol', 2017, 5, 'WhatsApp Image 2025-01-23 at 21.19.13.jpeg', 'WhatsApp Image 2025-01-23 at 21.19.14 (2).jpeg', 'WhatsApp Image 2025-01-23 at 21.19.14.jpeg', 'WhatsApp Image 2025-01-23 at 21.19.15.jpeg', 'WhatsApp Image 2025-01-23 at 21.19.14 (1).jpeg', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, '2025-01-24 08:10:46', NULL),
(15, 'V8', 5, 'Toyota V8 being a luxurious high end drive in which you can ever have for the family and also for official Executive meetings and also offering speed and comfortability having a 2500cc', 5000, 'Diesel', 2017, 7, 'WhatsApp Image 2025-01-23 at 21.20.10.jpeg', 'WhatsApp Image 2025-01-23 at 21.20.11 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.20.11.jpeg', 'WhatsApp Image 2025-01-23 at 21.20.12.jpeg', 'WhatsApp Image 2025-01-23 at 21.20.11 (2).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-24 08:18:35', NULL),
(16, 'Axio', 5, 'Toyota Axio being the most comfortable and excellent car you can purchase for your daily activities to serve you with low maintenance cost and minimal fuel consumption fuel having a 1500cc.', 3000, 'Petrol', 2019, 5, 'WhatsApp Image 2025-01-23 at 21.20.43 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.20.42 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.20.43.jpeg', 'WhatsApp Image 2025-01-23 at 21.20.41.jpeg', 'WhatsApp Image 2025-01-23 at 21.20.42.jpeg', 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, 1, NULL, '2025-01-24 08:23:16', NULL),
(17, 'Ranger-Sport', 5, 'Experience power and style with the Toyota Ranger Sport – a rugged, high-performance pickup designed for adventure. Built for durability and equipped with advanced features, it’s the perfect blend of strength and sophistication for any terrain', 4500, 'Diesel', 2019, 4, 'WhatsApp Image 2025-01-25 at 11.12.14.jpeg', 'WhatsApp Image 2025-01-25 at 11.12.15.jpeg', 'WhatsApp Image 2025-01-25 at 11.12.15 (1).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.14 (2).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.14 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-25 08:28:04', NULL),
(18, 'Subaru XV', 10, 'The Subaru XV is a stylish and versatile compact SUV designed for adventure. With its signature Symmetrical All-Wheel Drive, advanced safety features, and fuel-efficient performance, the XV offers a perfect blend of comfort, capability, and reliability for both city driving and off-road exploration', 3500, 'Diesel', 2019, 5, 'WhatsApp Image 2025-01-23 at 21.23.20.jpeg', 'WhatsApp Image 2025-01-23 at 21.23.20 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.23.21.jpeg', 'WhatsApp Image 2025-01-23 at 21.23.21 (2).jpeg', 'WhatsApp Image 2025-01-23 at 21.23.21 (1).jpeg', 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, 1, 1, '2025-01-25 08:32:55', NULL),
(19, 'GLE', 11, 'The Mercedes-Benz GLE is a luxury SUV that combines elegance, power, and cutting-edge technology. With its sophisticated design, advanced safety features, and dynamic performance, the GLE offers a premium driving experience for those who demand both comfort and capability', 5000, 'Diesel', 2019, 5, 'WhatsApp Image 2025-01-23 at 21.22.44.jpeg', 'WhatsApp Image 2025-01-23 at 21.22.44 (2).jpeg', 'WhatsApp Image 2025-01-23 at 21.22.45.jpeg', 'WhatsApp Image 2025-01-23 at 21.22.45 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.22.45 (2).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-25 08:38:31', NULL),
(20, 'VELLFIRE', 5, 'The Toyota Vellfire is a premium luxury MPV that offers a perfect blend of elegance, comfort, and advanced technology. With its bold design, spacious interior, and cutting-edge features, the Vellfire provides a first-class travel experience for families and executives alike', 4500, 'Petrol', 2019, 7, 'WhatsApp Image 2025-01-25 at 11.12.44.jpeg', 'WhatsApp Image 2025-01-25 at 11.12.45.jpeg', 'WhatsApp Image 2025-01-25 at 11.12.46.jpeg', 'WhatsApp Image 2025-01-25 at 11.12.45 (2).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.44 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-01-25 08:42:48', NULL),
(21, 'SIENTA', 5, 'The Toyota Sienta is a compact multi-purpose vehicle (MPV) designed for practicality and comfort. With its stylish design, spacious interior, and fuel-efficient performance, the Sienta is perfect for urban families and everyday adventures.', 3500, 'Petrol', 2022, 7, 'WhatsApp Image 2025-01-25 at 11.12.30 (1).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.30 (1).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.29 (2).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.29 (1).jpeg', 'WhatsApp Image 2025-01-25 at 11.12.29.jpeg', 1, 1, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, '2025-01-25 08:47:22', '2025-03-13 13:16:10'),
(22, 'GLE 43', 11, ' Mercedes-Benz GLE 450, a luxury midsize SUV that offers a powerful 3.0-liter inline-6 turbo engine with EQ Boost mild-hybrid technology. It delivers a smooth and dynamic driving experience, combining performance with fuel efficiency. The GLE 450 features a luxurious interior, advanced driver-assistance systems, and cutting-edge infotainment, making it a perfect blend of comfort, technology, and power for any journey.', 5000, 'Diesel', 2019, 5, 'WhatsApp Image 2025-01-23 at 21.24.29 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.24.29 (2).jpeg', 'WhatsApp Image 2025-01-23 at 21.24.29.jpeg', 'WhatsApp Image 2025-01-23 at 21.24.30.jpeg', 'WhatsApp Image 2025-01-23 at 21.24.30 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-25 08:55:54', NULL),
(23, 'GLC', 11, 'The Mercedes-Benz GLC is a luxury compact SUV that combines sleek design, advanced technology, and dynamic performance. With a spacious, high-end interior, cutting-edge safety features, and efficient powertrains, the GLC offers a refined driving experience for both city commutes and long-distance journeys.', 5000, 'Petrol', 2017, 4, 'WhatsApp Image 2025-01-23 at 21.21.17.jpeg', 'WhatsApp Image 2025-01-23 at 21.21.17 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.21.19 (1).jpeg', 'WhatsApp Image 2025-01-23 at 21.21.18.jpeg', 'WhatsApp Image 2025-01-23 at 21.21.18 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-25 09:02:04', NULL),
(24, 'Forester', 10, 'The Subaru Forester is a versatile and reliable compact SUV, designed for adventure and everyday driving. It features Subaru\'s Symmetrical All-Wheel Drive, advanced safety technologies, and a spacious, comfortable interior, making it an ideal choice for families and outdoor enthusiasts', 4000, 'Diesel', 2017, 4, 'WhatsApp Image 2025-01-27 at 10.31.46.jpeg', 'WhatsApp Image 2025-01-27 at 10.31.45.jpeg', 'WhatsApp Image 2025-01-27 at 10.31.46 (1).jpeg', 'WhatsApp Image 2025-01-27 at 10.31.47 (1).jpeg', 'WhatsApp Image 2025-01-27 at 10.51.52.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-01-27 07:40:00', '2025-01-27 07:51:47'),
(25, 'E200', 11, 'The Mercedes-Benz E 200 is a luxury sedan that combines elegance, performance, and cutting-edge technology. With its refined design, advanced safety features, and smooth driving dynamics, the E 200 offers a premium experience for those who appreciate comfort and sophistication.', 4500, 'Diesel', 2019, 4, 'WhatsApp Image 2025-01-27 at 10.31.48.jpeg', 'WhatsApp Image 2025-01-27 at 10.31.48 (1).jpeg', 'WhatsApp Image 2025-01-27 at 10.31.48 (2).jpeg', 'WhatsApp Image 2025-01-27 at 10.31.49.jpeg', 'WhatsApp Image 2025-01-27 at 10.31.49 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-01-27 07:44:22', NULL),
(26, 'Crown-Athlete', 5, 'The Toyota Crown Athlete is a luxury sports sedan that blends performance, style, and advanced technology. Known for its sleek design, powerful engine options, and premium interior features, the Crown Athlete offers a dynamic driving experience with a touch of elegance and comfort.', 3500, 'Petrol', 2017, 4, 'WhatsApp Image 2025-01-27 at 10.31.49.jpeg', 'WhatsApp Image 2025-01-27 at 10.31.50.jpeg', 'WhatsApp Image 2025-01-27 at 10.31.50 (1).jpeg', 'WhatsApp Image 2025-01-27 at 10.31.50 (2).jpeg', 'WhatsApp Image 2025-01-27 at 10.31.50.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-27 07:48:22', NULL),
(27, 'Demio', 9, 'The Mazda Demio, also known as the Mazda2, is a subcompact hatchback known for its fuel efficiency, reliability, and stylish design. Produced since 1996, it features compact dimensions, making it ideal for city driving. The latest models come with Skyactiv technology, improving performance and fuel economy. It offers 1.3L and 1.5L petrol or diesel engines, with manual or automatic transmission. The Demio is affordable, easy to maintain, and fun to drive, making it a popular choice for budget-conscious buyers. ????????', 2500, 'Petrol', 2017, 4, 'WhatsApp Image 2025-03-02 at 17.52.14.jpeg', 'WhatsApp Image 2025-03-02 at 17.52.31.jpeg', 'WhatsApp Image 2025-03-02 at 17.51.50.jpeg', 'WhatsApp Image 2025-03-02 at 17.51.42.jpeg', 'WhatsApp Image 2025-03-02 at 17.52.14.jpeg', 1, 1, 1, 1, NULL, 1, NULL, 1, NULL, 1, 1, NULL, '2025-03-02 15:17:31', NULL),
(28, 'BMW 740e G30', 2, 'The BMW 740e G30 is a plug-in hybrid luxury sedan from the BMW 7 Series (G11/G12), produced between 2016 and 2019. It combines a 2.0L turbocharged 4-cylinder engine with an electric motor, producing a total of 322 hp (240 kW). The xDrive variant (740Le xDrive) offers all-wheel drive, while the standard 740e is rear-wheel drive.', 5000, 'Diesel', 2017, 4, 'WhatsApp Image 2025-03-02 at 17.52.32 (2).jpeg', 'WhatsApp Image 2025-03-02 at 17.52.32 (1).jpeg', 'WhatsApp Image 2025-03-02 at 17.52.32.jpeg', 'WhatsApp Image 2025-03-02 at 17.52.33 (2).jpeg', 'WhatsApp Image 2025-03-02 at 17.52.33 (1).jpeg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-03-02 15:33:49', NULL),
(29, 'Audi Q5', 3, 'The Audi Q5 is a luxury compact SUV known for its premium design, advanced technology, and strong performance. First introduced in 2008, it is available with petrol, diesel, and hybrid engine options, including Audi’s quattro all-wheel drive system for superior handling.\r\nThe latest Q5 models feature a 2.0L turbocharged engine, spacious and high-tech interiors, modern safety features, and efficient mild-hybrid technology. It offers a smooth and comfortable ride, making it a great choice for both city and highway driving. ?????', 4700, 'Diesel', 2017, 4, 'WhatsApp Image 2025-03-02 at 17.51.40.jpeg', 'WhatsApp Image 2025-03-02 at 17.51.40.jpeg', 'WhatsApp Image 2025-03-02 at 17.51.39.jpeg', 'WhatsApp Image 2025-03-02 at 17.51.39 (1).jpeg', 'WhatsApp Image 2025-03-02 at 17.51.40.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-03-02 16:28:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
