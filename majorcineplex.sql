-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 10:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `.majorcineplex`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOKING_ID` varchar(10) NOT NULL,
  `CUST_ID` varchar(10) NOT NULL,
  `MOVIE_ID` varchar(10) NOT NULL,
  `SCHEDULE_ID` varchar(10) NOT NULL,
  `THEATRE_ID` varchar(10) NOT NULL,
  `SEAT_ID` varchar(30) NOT NULL,
  `SEAT_TYPE_ID` varchar(10) NOT NULL,
  `NO_OF_SEATS` int(3) NOT NULL,
  `PROMO_ID` varchar(10) NOT NULL,
  `TRANSACTION_ID` varchar(10) NOT NULL,
  `PAY_STATUS` varchar(8) NOT NULL,
  `DUE_DATE` date NOT NULL,
  `DUE_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOKING_ID`, `CUST_ID`, `MOVIE_ID`, `SCHEDULE_ID`, `THEATRE_ID`, `SEAT_ID`, `SEAT_TYPE_ID`, `NO_OF_SEATS`, `PROMO_ID`, `TRANSACTION_ID`, `PAY_STATUS`, `DUE_DATE`, `DUE_TIME`) VALUES
('B001', 'C001', 'M001', 'S001', 'TT001', 'A1, A2', 'PV', 2, 'PMY001 ', 'TS001 ', 'PAID', '2022-06-08', '17:30:00'),
('B002', 'C002', 'M002', 'S002', 'TT002', 'A3, A4, A5', 'PV ', 3, 'NONE', 'TS002', 'PAID', '2022-06-16', '12:00:00'),
('B003', 'C003', 'M003', 'S003', 'TT003', 'A6, A7', 'PV ', 2, 'NONE', 'TS003', 'PAID', '2022-06-23', '13:00:00'),
('B004', 'C004', 'M004', 'S004', 'TT004', 'A8', 'PV  ', 1, 'PMY001 ', 'TS004', 'UNPAID', '2022-06-01', '18:00:00'),
('B005', 'C005', 'M005', 'S005', 'TT005', 'A9, A10', 'PV ', 2, 'NONE ', 'TS005 ', 'PAID ', '2022-06-10', '12:00:00'),
('B006', 'C006', 'M006', 'S006', 'TT006', 'H1, H2', ' PV ', 2, 'NONE ', 'TS006', 'UNPAID', '2022-06-23', '10:30:00'),
('B007', 'C007', 'M007', 'S007', 'TT007', 'H3', 'PV ', 1, ' NONE', 'TS007', 'UNPAID', '2022-07-02', '14:30:00'),
('B008', 'C008', 'M008', 'S008', 'TT008', 'H4', ' PV  ', 1, 'NONE', 'TS008', 'PAID ', '2022-06-05', '15:00:00'),
('B009', 'C009', 'M009', 'S009', 'TT009', 'H5, H6, H7, H8 ', 'PV', 4, 'PMY001  ', 'TS009 ', 'UNPAID ', '2022-06-08', '17:30:00'),
('B010', 'C010', 'M010', 'S010', 'TT010', 'H9', 'PM', 1, 'PMY001 ', 'TS010', 'PAID  ', '2022-06-08', '18:30:00'),
('B011', 'C011', 'M011', 'S011 ', 'TT011', 'H10, H11', 'PM', 2, 'PMX001', 'TS011', 'PAID ', '2022-12-25', '13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` varchar(10) NOT NULL,
  `CUST_NAME` varchar(150) NOT NULL,
  `EMAIL` varchar(64) NOT NULL,
  `PASSWORD` varchar(16) NOT NULL,
  `PHONE` varchar(10) NOT NULL,
  `GENDER` varchar(8) NOT NULL,
  `DOB` date NOT NULL,
  `MEMBERSHIP_ID` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `CUST_NAME`, `EMAIL`, `PASSWORD`, `PHONE`, `GENDER`, `DOB`, `MEMBERSHIP_ID`) VALUES
('C001', 'Leslie E. Marten', 'LeslieEMarten@teleworm.us', 'lm1234', '7073748454', 'F', '1986-06-26', 'MB001'),
('C002', 'Thomas Mauer', 'ThomasMauer@jourrapide.com', 'tm1235', '5167712155', 'M', '1939-06-09', 'MB002'),
('C003', 'Nadine Kruger', 'nadine@rhyta.com', 'nd1236', '0391653409', 'F', '1953-09-29', 'MB003'),
('C004', 'Katharina Goldschmidt', 'KatharinaGoldschmidt@jourrapide.com', 'kg1239', '0412468696', 'M', '1954-09-27', 'MB004'),
('C005', 'Christine Bar', 'ChristineBar@armyspy.com', 'cb1240', '0323655188', 'F', '1984-12-09', 'MB005'),
('C006', 'Ella M. Christoffersen', 'EllaMChristoffersen@teleworm.us', 'ec1241', '3289664536', 'F', '1978-02-25', 'MB006'),
('C007', 'Aksel C. Lorenzen', 'AkselCLorenzen@dayrep.com', 'AKC1965', '8194619879', 'M', '2001-02-08', 'MB007'),
('C008', 'Benjamin Corran', 'BenjaminCorran@jourrapide.com', 'BjC1546', '0745479000', 'M', '1947-11-11', 'MB008'),
('C009', 'William S. Schou', 'WilliamSSchou@teleworm.us', 'wss1655', ' 243639249', 'M', '2002-02-10', 'MB009'),
('C010', 'Sara Couvreur', 'SaraCouvreur@rhyta.com', 'sc1964', '0740449304', 'F', '1989-10-15', 'MB010'),
('C011', 'Flora Evergreen', 'floraevergreen@gmail.com', 'fe1955', '2463969455', 'F', '1997-02-05', 'MB011');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `MEMBER_ID` varchar(10) NOT NULL,
  `MEMBER_TYPE` varchar(20) NOT NULL,
  `POINTS` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`MEMBER_ID`, `MEMBER_TYPE`, `POINTS`) VALUES
('MB001', 'Regular', 223),
('MB002', 'Student', 50),
('MB003', 'Regular', 20),
('MB004', 'Regular', 25),
('MB005', 'Student', 15),
('MB006', 'Regular', 56),
('MB007', 'Regular', 39),
('MB008', 'Regular', 99),
('MB009', 'Regular', 344),
('MB010', 'Student', 89),
('MB011', 'Regular ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MOVIE_ID` varchar(10) NOT NULL,
  `MOVIE_NAME` varchar(100) NOT NULL,
  `GENRE` varchar(50) NOT NULL,
  `RATING` varchar(5) NOT NULL,
  `DURATION` varchar(10) NOT NULL,
  `SYNOPSIS` varchar(300) NOT NULL,
  `ACTORS` varchar(200) NOT NULL,
  `DIRECTOR` varchar(100) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MOVIE_ID`, `MOVIE_NAME`, `GENRE`, `RATING`, `DURATION`, `SYNOPSIS`, `ACTORS`, `DIRECTOR`, `START_DATE`, `END_DATE`) VALUES
(' m001', 'Jurassic World Dominion', 'Action , Adventure', 'PG-13', '147 mins', '\r\nInformations\r\nShowtimes\r\nCrew\r\n\r\nBRYCE DALLAS HOWARD\r\n\r\nCHRIS PRATT\r\n\r\nSAM NEILL\r\n\r\nLAURA DERN\r\n\r\nJEFF GOLDBLUM\r\nDirector\r\n\r\nCOLIN TREVORROW\r\nSynopsis\r\n \r\n\r\nThis June, experience the epic conclusion to the Jurassic era as two generations unite for the first time. Chris Pratt and Bryce Dallas Howar', 'BRYCE DALLAS HOWARD, CHRIS PRATT, SAM NEILL, LAURA DERN, JEFF GOLDBLUM', 'COLIN TREVORROW\r\n', '2022-06-08', '2022-06-19'),
('m002', 'Lightyear', 'Action , Adventure , Animation', 'G', '105 mins', '\"Lightyear” is the definitive origin story of Buzz Lightyear—the hero who inspired the toy—follows the legendary Space Ranger on an intergalactic adventure. “Buzz’s world was always something I was excited about,” said director Angus MacLane. “In ‘Toy Story,’ there seemed to be this incredible backs', 'Buzz Light Year voiced by Chris Evans', 'PETE DOCTER', '2022-06-16', '2022-06-19'),
('m003', 'Elvis', 'Drama , Musical', 'PG-13', '159 mins', 'A look at the life of the legendary rock and roll star, Elvis Presley. \r\n\r\nFrom Oscar-nominated visionary filmmaker Baz Luhrmann comes Warner Bros. Pictures’ drama “Elvis,” \r\nThe film explores the life and music of Elvis Presley (Butler), seen through the prism of his complicated relationship with h', 'Starring Austin Butler and Oscar winner Tom Hanks', 'BAZ LUHRMANN', '2022-06-23', '2022-06-26'),
('m004', 'Detective Conan The Movie 25', 'Animation , Crime , Thriller', 'G', '111 mins', 'Shibuya, Tokyo, is bustling with the Halloween season. A wedding is being held at Shibuya Hikarie, where Miwako Sato is dressed in a wedding dress. While Conan and the other invited guests are watching, an assailant suddenly bursts in, and Wataru Takagi, who was trying to protect Sato, is injured. T', '', 'SUSUMU MITSUNAKA\r\n', '2022-05-25', '2022-06-12'),
('m005', 'Doctor Strange 2', 'Action', 'PG-13', '126 mins', 'In Marvel Studios’ “Doctor Strange in the Multiverse of Madness,” the MCU unlocks the Multiverse \r\nand pushes its boundaries further than ever before. Journey into the unknown with Doctor Strange, \r\nwho, with the help of mystical allies both old and new, traverses the mind-bending and dangerous\r\nalt', 'BENEDICT CUMBERBATCH, ELIZABETH CHASE OLSEN\r\n', 'SAM RAIMI\r\n', '2022-05-04', '2022-06-12'),
('m006', 'Jujutsu Kaisen 0', 'Action , Animation , Fantasy', 'PG-13', '112 mins', 'Yuta Okkotsu, a high schooler who gains control of an extremely powerful Cursed Spirit and gets enrolled in the Tokyo Prefectural Jujutsu High School by Jujutsu Sorcerers to help him control his power and keep an eye on him.', 'MEGUMI OGATA, YÛICHI NAKAMURA, TAKAHIRO SAKURAI\r\n', 'SEONG-HU PARK\r\n', '2022-06-23', '2022-06-26'),
('m007', 'Minions The Rise of Gru', 'Adventure , Animation , Comedy', 'PG', '87 mins', 'In 2017, DESPICABLE ME 3 grossed over $1 billion worldwide and broke the record for opening weekend and single-day gross in China. Next summer, ILLUMINATION will release the follow-up to the third-highest grossing animated film of all time worldwide with MINIONS: THE RISE OF GRU.', 'TARAJI P. HENSON, STEVE CARELL, MICHELLE YEOH', 'KYLE BALDA', '2022-06-30', '2022-07-04'),
('m008', 'Top Gun Maverick\r\n', 'Action , Drama', 'PG-13', '130 mins', 'After more than thirty years of service as one of the Navy’s top aviators, Pete “Maverick” Mitchell (Tom Cruise) is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. When he finds himself training a detachment of Top Gun grad', 'TOM CRUISE, JENNIFER CONNELLY, VAL KILMER', 'JOSEPH KOSINSKI\r\n', '2022-05-25', '2022-06-12'),
('m009', 'Prithviraj', 'Action , Drama', '15+', ' 135 mins', 'Samrat Prithviraj Story: Based on Prithviraj Raso, the film tells the story of King Prithviraj Chauhan who gave it his all when he clashed with Muhammad Ghori to protect his pride and soil from foreign invasion and captivity', 'AKSHAY KUMAR, SONU SOOD, SANJAY DUTT', 'CHANDRAPRAKASH DWIVEDI\r\n', '2022-06-03', '2022-06-09'),
('m010', 'The Last 10 Years', 'Drama', '14+', '124 mins', 'Twenty-year-old Matsuri Takabayashi learns that she only has ten years to live due to an incurable disease. She decides to not dwell on her life and not to fall in love, but she meets Kazuto Manabe at a school reunion.', 'NANA KOMATSU, KENTARÔ SAKAGUCHI\r\n', 'MICHIHITO FUJII\r\n', '2022-06-02', '2022-06-12'),
('m011', 'Arthur Christmas', 'Animation, Family, Comedy', 'G', '107 mins', 'Produced by Aardman Features in association with Sony Pictures Animation, this fun-filled holiday movie introduces viewers to Santa\'s mischievous son Arthur (James McAvoy), who races to complete an important mission in time to ensure that this year\'s Christmas celebrations will go off without a hitc', 'James McAvoy, Bill Nighy, Ashley Jensen', 'Sarah Smith', '2022-12-20', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `TRANSACTION_ID` varchar(10) NOT NULL,
  `CUST_ID` varchar(10) NOT NULL,
  `PAY_METHOD` varchar(15) NOT NULL,
  `NAME_ON_CARD` varchar(150) NOT NULL,
  `AMOUNT` int(5) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`TRANSACTION_ID`, `CUST_ID`, `PAY_METHOD`, `NAME_ON_CARD`, `AMOUNT`, `DATE`, `TIME`) VALUES
('TS001', 'C001', 'Credit Card', 'Leslie E. Marten', 378, '2022-06-07', '15:00:00'),
('TS002', 'C002', 'Debit Card', 'Thomas Mauer', 1140, '2022-06-15', '20:45:00'),
('TS003', 'C003', 'Credit Card ', 'Nadine Kruger', 760, '2022-06-23', '12:35:00'),
('TS005', 'C005', 'Credit Card ', 'Christine Bar', 760, '2022-06-09', '16:24:00'),
('TS008', 'C008', 'Credit Card ', 'Benjamin Corran', 380, '2022-06-05', '12:30:00'),
('TS010', 'C010', 'Debit Card ', 'Sara Couvreur', 189, '2022-06-07', '13:45:00'),
('TS011', 'C001', 'Debit Card ', 'Leslie E. Marten', 532, '2022-12-24', '14:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_x`
--

CREATE TABLE `promotion_x` (
  `PROMO_ID` varchar(10) NOT NULL,
  `PROMO_TITLE` varchar(80) NOT NULL,
  `PROMO_DETAILS` varchar(300) NOT NULL,
  `PERIOD` varchar(30) NOT NULL,
  `DISCOUNT` float NOT NULL,
  `POINTS_REWARD` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion_x`
--

INSERT INTO `promotion_x` (`PROMO_ID`, `PROMO_TITLE`, `PROMO_DETAILS`, `PERIOD`, `DISCOUNT`, `POINTS_REWARD`) VALUES
('PMX001', 'Merry Christmas & Happy New Year 2023', 'NEW YEAR 2023 Discount 30% off for all kinds of tickets', 'December 20 to 31, 2', 0.3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_y`
--

CREATE TABLE `promotion_y` (
  `PROMO_ID` varchar(10) NOT NULL,
  `PROMO_NAME` varchar(50) NOT NULL,
  `PROMO_SEAT_RATE` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion_y`
--

INSERT INTO `promotion_y` (`PROMO_ID`, `PROMO_NAME`, `PROMO_SEAT_RATE`) VALUES
('PMY001', 'WEDNESDAY PRICE', 189);

-- --------------------------------------------------------

--
-- Table structure for table `row`
--

CREATE TABLE `row` (
  `ROW_ID` varchar(10) NOT NULL,
  `THEATRE_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `row`
--

INSERT INTO `row` (`ROW_ID`, `THEATRE_ID`) VALUES
('A', 'ALL THEATR'),
('H', 'ALL THEATR');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `SCHEDULE_ID` varchar(10) NOT NULL,
  `MOVIE_ID` varchar(10) NOT NULL,
  `THEATRE_ID` varchar(10) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `PROMO_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`SCHEDULE_ID`, `MOVIE_ID`, `THEATRE_ID`, `DATE`, `TIME`, `PROMO_ID`) VALUES
('S001', 'M001', 'TT001  ', '2022-06-08', '18:30:00', 'PMY001'),
('S002', 'M002', 'TT002 ', '2022-06-16', '14:00:00', 'NONE'),
('S003', 'M003', 'TT003 ', '2022-06-23', '15:00:00', 'NONE'),
('S004', 'M004', 'TT004', '2022-06-01', '19:00:00', 'PMY001'),
('S005', 'M005', 'TT005', '2022-06-10', '13:00:00', 'NONE'),
('S006', 'M006', 'TT006', '2022-06-23', '11:30:00', 'NONE'),
('S007', 'M007', 'TT007', '2022-07-02', '15:30:00', 'NONE'),
('S008', 'M008', 'TT008', '2022-06-05', '16:00:00', 'NONE'),
('S009', 'M009', 'TT009', '2022-06-08', '18:30:00', 'PMY001 '),
('S010', 'M010', 'TT010', '2022-06-08', '19:30:00', 'PMY001'),
('S011', 'M011', 'TT011', '2022-12-25', '14:30:00', 'PMY002');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `SEAT_ID` varchar(10) NOT NULL,
  `ROW_ID` varchar(10) NOT NULL,
  `SEAT_TYPE_ID` varchar(10) NOT NULL,
  `THEATRE_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`SEAT_ID`, `ROW_ID`, `SEAT_TYPE_ID`, `THEATRE_ID`) VALUES
('A1', 'A', 'PV', 'TT001 '),
('A2', 'A', 'PV', 'TT002'),
('A3', 'A', 'PV', 'TT003'),
('A4', 'A', 'PV', 'TT004'),
('A5', 'A', 'PV', 'TT005'),
('A6', 'A', 'PV', 'TT006'),
('A7', 'A', 'PV', 'TT007'),
('A8', 'A', 'PV', 'TT008'),
('A9', 'A', 'PV', 'TT009'),
('A10', 'A', 'PV', 'TT010'),
('H1', 'H', 'PM', 'TT001 '),
('H2', 'H', 'PM', 'TT002'),
('H3', 'H', 'PM', 'TT003'),
('H4', 'H', 'PM', 'TT004'),
('H5', 'H', 'PM', 'TT005'),
('H6', 'H', 'PM', 'TT006'),
('H7', 'H', 'PM', 'TT007'),
('H8', 'H', 'PM', 'TT008'),
('H9', 'H', 'PM', 'TT009'),
('H10', 'H', 'PM', 'TT010'),
('H11', 'H', 'PM ', 'TT011'),
('H12', 'H', 'PM ', 'TT012'),
('H13', 'H', 'PM ', 'TT013'),
('H14', 'H', 'PM ', 'TT014');

-- --------------------------------------------------------

--
-- Table structure for table `seat_status`
--

CREATE TABLE `seat_status` (
  `SEAT_ID` varchar(10) NOT NULL,
  `CURRENT_STATUS` varchar(20) NOT NULL,
  `BOOKING_ID` varchar(10) NOT NULL,
  `BOOKING_DATE` date NOT NULL,
  `BOOKING_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat_status`
--

INSERT INTO `seat_status` (`SEAT_ID`, `CURRENT_STATUS`, `BOOKING_ID`, `BOOKING_DATE`, `BOOKING_TIME`) VALUES
('A1', 'unavailable  ', 'B001', '2022-06-08', '18:30:00'),
('A2', 'unavailable  ', 'B001', '2022-06-08', '18:30:00'),
('A3', 'unavailable   ', 'B002', '2022-06-16', '14:00:00'),
('A4', 'unavailable  ', 'B002', '2022-06-16', '14:00:00'),
('A5', 'unavailable   ', 'B002', '2022-06-16', '14:00:00'),
('A6', 'unavailable   ', 'B003', '2022-06-23', '15:00:00'),
('A7', 'unavailable   ', 'B003', '2022-06-23', '15:00:00'),
('A8', 'unavailable    ', ' B004', '2022-06-01', '19:00:00'),
('A9', 'unavailable    ', 'B005', '2022-06-10', '13:00:00'),
('A10', 'unavailable   ', 'B005', '2022-06-10', '13:00:00'),
('H1', 'unavailable   ', 'B006', '2022-06-23', '11:30:00'),
('H2', 'unavailable    ', 'B006', '2022-06-23', '11:30:00'),
('H3', 'unavailable    ', 'B007', '2022-07-02', '15:30:00'),
('H4', 'unavailable    ', 'B008', '2022-06-05', '16:00:00'),
('H5', 'unavailable    ', 'B009', '2022-06-08', '18:30:00'),
('H6', 'unavailable    ', 'B009', '2022-06-08', '18:30:00'),
('H7', 'unavailable    ', 'B009', '2022-06-08', '18:30:00'),
('H8', 'unavailable   ', 'B009', '2022-06-08', '18:30:00'),
('H9', 'unavailable    ', 'B010', '2022-06-08', '19:30:00'),
('H10', 'unavailable    ', 'B011', '2022-12-25', '14:30:00'),
('H11', 'unavailable    ', 'B011', '2022-12-25', '14:30:00'),
('H12', 'available  ', 'none', '0000-00-00', '00:00:00'),
('H13', 'available  ', 'none', '0000-00-00', '00:00:00'),
('H14', 'available  ', 'none ', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `seat_type_rate`
--

CREATE TABLE `seat_type_rate` (
  `SEAT_TYPE_ID` varchar(10) NOT NULL,
  `TYPE_OF_SEAT` varchar(15) NOT NULL,
  `SEAT_RATE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat_type_rate`
--

INSERT INTO `seat_type_rate` (`SEAT_TYPE_ID`, `TYPE_OF_SEAT`, `SEAT_RATE`) VALUES
('FC', 'FIRST_CLASS', 230),
('HM', 'HONEYMOON', 220),
('NM', 'NORMAL', 200),
('OPC', 'OPERA_CHAIR', 600),
('PM', 'Premium', 330),
('PV', 'Privilege', 380);

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `THEATRE_ID` varchar(10) NOT NULL,
  `THEATRE_NAME` varchar(20) NOT NULL,
  `NO_OF_SEATS` int(4) NOT NULL,
  `SYSTEM` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`THEATRE_ID`, `THEATRE_NAME`, `NO_OF_SEATS`, `SYSTEM`) VALUES
('TT001', 'THEATRE 1', 150, 'EGV CINEMA'),
('TT002', 'THEATRE 2', 150, 'DIGITAL 2D'),
('TT003', 'THEATRE 3', 150, 'DIGITAL 2D'),
('TT004', 'THEATRE 4', 150, 'DIGITAL 2D'),
('TT005', 'THEATRE 5', 150, 'DIGITAL 2D'),
('TT006', 'THEATRE 6', 150, 'DIGITAL 2D'),
('TT007', 'THEATRE 7', 150, 'DIGITAL 2D'),
('TT008', 'THEATRE 8', 150, 'DIGITAL 2D'),
('TT009', 'THEATRE 9', 150, 'DIGITAL 2D'),
('TT010', 'THEATRE 10', 150, 'DIGITAL 2D'),
('TT011', 'THEATRE 11', 150, 'DIGITAL 2D'),
('TT012', 'IMAX', 150, 'Imax Silver Screen,  Laser Surround'),
('TT013', 'HONDA ULTIMATE 1', 150, '4DX'),
('TT014', 'HONDA ULTIMATE 2', 150, '4DX'),
('TT015', 'PAVALAI', 1096, 'Siam Pavalai by BDMS Laser Projection System ภาพคมชัดระดับ Ultra HD สีสมจริงกว่าปกติมากกว่า 35ล้านเฉดสี ภาพสว่างกว่าปกติถึง 2.5 เท่า');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TICKET_ID` varchar(10) NOT NULL,
  `MOVIE_NAME` varchar(100) NOT NULL,
  `THEATRE_NAME` varchar(20) NOT NULL,
  `SEAT_ID` varchar(10) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `AMOUNT` int(5) NOT NULL,
  `TEL_NO` varchar(10) NOT NULL,
  `CODE` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TICKET_ID`, `MOVIE_NAME`, `THEATRE_NAME`, `SEAT_ID`, `DATE`, `TIME`, `AMOUNT`, `TEL_NO`, `CODE`) VALUES
('TK001', 'Jurassic World Dominion', 'TT001', 'A1, A2', '2022-06-08', '18:30:00', 378, '7073748454', '123456'),
('TK002', 'Lightyear', 'THEATRE 2 ', 'A3, A4, A5', '2022-06-16', '14:00:00', 1140, '5167712155', '123457'),
('TK003', 'ELVIS', 'THEATRE 3', 'A6, A7', '2022-06-23', '15:00:00', 760, '0391653409', '123458'),
('TK005', 'Doctor Strange', 'THEATRE 5', 'A9, A10', '2022-06-10', '13:00:00', 760, '0323655188', '123459'),
('TK008', 'TOP GUN MAVERICK', 'THEATRE 8', 'H4', '2022-06-05', '16:00:00', 380, '0745479000', '123460'),
('TK010', 'The Last 10 Years', 'THEATRE 10', 'H9', '2022-06-08', '19:30:00', 189, '0740449304', '123461'),
('TK011', 'Arthur Christmas', 'THEATRE 11', 'H10, H11', '2022-12-25', '14:30:00', 532, '7073748454', '123462');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOKING_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`MEMBER_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MOVIE_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`TRANSACTION_ID`);

--
-- Indexes for table `promotion_x`
--
ALTER TABLE `promotion_x`
  ADD PRIMARY KEY (`PROMO_ID`);

--
-- Indexes for table `promotion_y`
--
ALTER TABLE `promotion_y`
  ADD PRIMARY KEY (`PROMO_ID`);

--
-- Indexes for table `row`
--
ALTER TABLE `row`
  ADD PRIMARY KEY (`ROW_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`SCHEDULE_ID`);

--
-- Indexes for table `seat_type_rate`
--
ALTER TABLE `seat_type_rate`
  ADD PRIMARY KEY (`SEAT_TYPE_ID`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`THEATRE_ID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TICKET_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
