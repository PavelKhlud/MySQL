-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

DROP DATABASE IF EXISTS `Travelinka`;
CREATE DATABASE `Travelinka`;
USE `Travelinka`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address`
(
    `id`           bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `region`       varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `city`         varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `street`       varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `house_number` int(11)                                DEFAULT NULL,
    `flat`         int(11)                                DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address`
    DISABLE KEYS */;
INSERT INTO `address`
VALUES (1, 'Micronesia', 'Tremblayview', 'Becker Islands', 63478, 124),
       (2, 'Norfolk Island', 'Rickville', 'Willms Views', 0, 124),
       (3, 'Turks and Caicos Islands', 'Orieville', 'Glover Corners', 57560299, 44),
       (4, 'Iraq', 'South Maymie', 'Rasheed Ridge', 976, 98),
       (5, 'Ethiopia', 'Sauerstad', 'Valerie Street', 5065, 125),
       (6, 'Haiti', 'Jammiechester', 'Mitchell Road', 52502, 59),
       (7, 'Swaziland', 'Mitchellberg', 'Ruecker Greens', 810288706, 71),
       (8, 'Liberia', 'Mikaylafurt', 'Julie Valley', 122597, 42),
       (9, 'Cook Islands', 'North Winnifred', 'Zion Drives', 57, 95),
       (10, 'Micronesia', 'Blairview', 'Damaris Ferry', 1227604, 103),
       (11, 'Kyrgyz Republic', 'North Aronbury', 'O\'Conner Groves', 710637, 83),
       (12, 'Mauritius', 'Kleinburgh', 'Letitia Mission', 68, 9),
       (13, 'Cape Verde', 'Wilmerburgh', 'Orrin Isle', 809252, 106),
       (14, 'Hong Kong', 'New Geovanny', 'Green Harbor', 559, 19),
       (15, 'Martinique', 'Reinholdport', 'Connelly Neck', 93756139, 52),
       (16, 'Jamaica', 'Jaquelinehaven', 'Effertz Place', 4226, 39),
       (17, 'Costa Rica', 'East Marcelborough', 'Carroll Terrace', 7, 5),
       (18, 'United States Virgin Islands', 'East Bertrand', 'Matilda Fort', 365707707, 80),
       (19, 'Chad', 'West Guadalupe', 'Langosh Junction', 55434748, 8),
       (20, 'Ireland', 'West Mitchelfort', 'Brakus Extension', 19, 83),
       (21, 'Saudi Arabia', 'Bartellville', 'Faye Valleys', 2249706, 72),
       (22, 'Monaco', 'Julianmouth', 'Williamson Extensions', 26357151, 127),
       (23, 'United Kingdom', 'New Izabellafort', 'Emmett Loop', 0, 3),
       (24, 'Togo', 'Breitenbergside', 'Ardith Branch', 0, 144),
       (25, 'Malawi', 'Lake Zulashire', 'Leonor Pine', 0, 143),
       (26, 'South Georgia and the South Sandwich Islands', 'Scotberg', 'Beahan Fort', 776, 40),
       (27, 'Montserrat', 'North Douglasshire', 'Oleta Unions', 3, 82),
       (28, 'Jordan', 'Port Paul', 'Juwan Lakes', 8, 44),
       (29, 'Zambia', 'Port Krista', 'Ullrich Cliffs', 69658813, 10),
       (30, 'Grenada', 'Kubbury', 'Grant Rue', 0, 123),
       (31, 'Zimbabwe', 'Emardland', 'Percy Mountains', 8701, 63),
       (32, 'Nicaragua', 'Casperport', 'Heaney Islands', 916981, 26),
       (33, 'British Virgin Islands', 'Ebertville', 'Odessa Extension', 7202940, 98),
       (34, 'Wallis and Futuna', 'Bogisichmouth', 'Davis Harbor', 63325, 107),
       (35, 'Guyana', 'Ignaciostad', 'Herman Skyway', 5922827, 110),
       (36, 'Costa Rica', 'Hattieside', 'Stewart Courts', 23553, 50),
       (37, 'Djibouti', 'South Dorcas', 'Dickinson Track', 3358435, 121),
       (38, 'Kiribati', 'Lake Amos', 'Ressie Creek', 155, 108),
       (39, 'Central African Republic', 'Pattietown', 'Sean Plaza', 2478262, 123),
       (40, 'Monaco', 'Grantmouth', 'Caroline Road', 960, 10),
       (41, 'Jersey', 'Port Reyes', 'Reinger Wall', 355308500, 47),
       (42, 'Zambia', 'South Vitamouth', 'Claudie Way', 0, 48),
       (43, 'Montenegro', 'South Carterport', 'Schmidt Summit', 8108, 91),
       (44, 'Christmas Island', 'Mannfort', 'Weber Harbors', 48, 93),
       (45, 'Tanzania', 'West Mckayla', 'Asha Drive', 0, 58),
       (46, 'Uruguay', 'East Kolby', 'Lila Crescent', 51090455, 24),
       (47, 'Tajikistan', 'Bernhardshire', 'Watsica Lodge', 2, 6),
       (48, 'Netherlands', 'East Hassan', 'Bartoletti Prairie', 656871, 8),
       (49, 'Saudi Arabia', 'Randallside', 'Wiegand Green', 539, 5),
       (50, 'Palau', 'Boscoton', 'Langosh Port', 832651578, 37),
       (51, 'Azerbaijan', 'Kellieburgh', 'Chanel Passage', 9551968, 129),
       (52, 'Bhutan', 'Hettingerchester', 'Liliana Roads', 37, 143),
       (53, 'Cambodia', 'South Arlie', 'Mallory Drive', 769, 131),
       (54, 'El Salvador', 'Kohlertown', 'Gleichner Spring', 70, 116),
       (55, 'United States Virgin Islands', 'South Jana', 'Noelia Orchard', 770210167, 123),
       (56, 'Jamaica', 'Port Sabrina', 'Wilkinson Manor', 24, 23),
       (57, 'Samoa', 'West Clareport', 'Benjamin Estates', 9485, 85),
       (58, 'France', 'Port Jess', 'Ressie Square', 491, 34),
       (59, 'Poland', 'Lake Therese', 'Roosevelt Divide', 4, 30),
       (60, 'Thailand', 'Fritschberg', 'Vito Lake', 0, 31),
       (61, 'South Georgia and the South Sandwich Islands', 'Natmouth', 'Alexandrine Key', 2848032, 104),
       (62, 'Faroe Islands', 'Bustershire', 'Daren Park', 9, 94),
       (63, 'Malta', 'Rethashire', 'Schroeder Squares', 925, 116),
       (64, 'Kuwait', 'East Elroy', 'Jarrell Port', 928437, 94),
       (65, 'Northern Mariana Islands', 'Cindyfort', 'Hammes Brook', 584841, 17),
       (66, 'Portugal', 'Rosaton', 'Brooklyn Rest', 4256, 93),
       (67, 'Russian Federation', 'North Hailee', 'Robel Street', 13156, 68),
       (68, 'Swaziland', 'Hilllmouth', 'Scot Square', 6764364, 76),
       (69, 'Netherlands Antilles', 'Framiborough', 'Kuhn Rapids', 215544790, 75),
       (70, 'Dominica', 'New Rigoberto', 'Nyah Plains', 0, 135),
       (71, 'Cook Islands', 'Greenton', 'Deanna Junction', 2300096, 114),
       (72, 'Timor-Leste', 'Port Abigale', 'Chelsey Knolls', 777333521, 66),
       (73, 'Sierra Leone', 'East Rahsaanview', 'Wintheiser Estates', 91385, 136),
       (74, 'Samoa', 'Port Otisland', 'Herzog Station', 24858, 130),
       (75, 'Bulgaria', 'West Dudley', 'Trantow Mount', 8933, 29),
       (76, 'Germany', 'Eulahaven', 'Ewell Ways', 437, 15),
       (77, 'Andorra', 'Port Helenefurt', 'Mohr Locks', 698005, 83),
       (78, 'Greece', 'Celestinohaven', 'Funk Fork', 5829752, 145),
       (79, 'Bermuda', 'Port Kierafurt', 'Kirstin Mills', 9393, 89),
       (80, 'Slovenia', 'East Wiltonberg', 'Hegmann Place', 97478014, 104),
       (81, 'Bahamas', 'Kshlerinmouth', 'Maymie Crest', 0, 146),
       (82, 'Lithuania', 'Miketown', 'Kuhic Ways', 280, 138),
       (83, 'Maldives', 'Helenaborough', 'Hildegard Tunnel', 0, 119),
       (84, 'Svalbard & Jan Mayen Islands', 'Wymanberg', 'Runolfsson Views', 8, 90),
       (85, 'India', 'Ritchieland', 'Crooks Street', 71, 23),
       (86, 'Mauritania', 'Princessburgh', 'Kohler Port', 914878, 64),
       (87, 'Cocos (Keeling) Islands', 'East Easter', 'Braun Wells', 616, 8),
       (88, 'Liechtenstein', 'Jacynthemouth', 'Nitzsche Shore', 81108, 98),
       (89, 'Ghana', 'Willowfort', 'Burdette Walks', 43, 98),
       (90, 'Montserrat', 'New Bethstad', 'Joana Ways', 38042, 52),
       (91, 'Northern Mariana Islands', 'Hickleville', 'Rosenbaum Prairie', 85686727, 72),
       (92, 'Bulgaria', 'Lake Kaelynfurt', 'Johnston Plains', 0, 126),
       (93, 'Djibouti', 'New Kathlynville', 'Annabel Mount', 344481, 126),
       (94, 'Palau', 'Port Kenya', 'Ramiro Spring', 220282819, 65),
       (95, 'Tonga', 'West Hulda', 'Stark Plains', 63860798, 64),
       (96, 'Somalia', 'Elijahside', 'Eleonore Pines', 998165, 14),
       (97, 'Greece', 'Carolinaside', 'Velma Centers', 0, 108),
       (98, 'Malta', 'Shieldsland', 'Batz Inlet', 65973, 43),
       (99, 'Barbados', 'Vonberg', 'Erik Centers', 0, 144),
       (100, 'Bermuda', 'West Gabrielburgh', 'Kuphal Springs', 7378, 83);
/*!40000 ALTER TABLE `address`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `user_id`    bigint(20) unsigned NOT NULL,
    `house_id`   bigint(20) unsigned NOT NULL,
    `start_date` datetime DEFAULT NULL,
    `end_date`   datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    KEY `house_id` (`house_id`),
    CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `houses_for_rent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking`
    DISABLE KEYS */;
INSERT INTO `booking`
VALUES (1, 101, 1, '2013-09-03 06:10:17', '1970-05-14 18:54:17'),
       (2, 102, 2, '1999-11-17 05:11:45', '1995-03-12 03:23:06'),
       (3, 103, 3, '1990-04-26 21:35:59', '1979-03-03 18:24:01'),
       (4, 104, 4, '1990-07-03 00:50:32', '1989-08-24 03:16:47'),
       (5, 105, 5, '2020-03-13 08:23:29', '1975-04-10 21:47:39'),
       (6, 107, 6, '2013-10-10 07:15:36', '2014-12-03 05:42:10'),
       (7, 108, 7, '2001-07-25 23:56:16', '2021-03-24 17:13:21'),
       (8, 110, 8, '2019-02-03 15:14:30', '2017-08-12 04:09:33'),
       (9, 115, 9, '1971-06-25 06:25:44', '2010-11-30 22:43:49'),
       (10, 118, 10, '2007-12-19 05:25:07', '1985-10-29 07:52:32'),
       (11, 119, 11, '2001-02-25 12:27:38', '1983-06-10 04:14:28'),
       (12, 121, 12, '1977-07-03 04:33:53', '2008-08-26 16:01:39'),
       (13, 123, 13, '1986-04-16 13:38:19', '1976-12-30 07:21:05'),
       (14, 124, 14, '2019-04-11 06:34:03', '2019-10-14 06:01:41'),
       (15, 127, 15, '1999-04-29 12:54:32', '1998-12-16 05:12:32'),
       (16, 139, 16, '2005-08-17 09:03:12', '2021-08-08 12:59:59'),
       (17, 141, 17, '1997-10-19 15:53:08', '1992-03-29 06:08:15'),
       (18, 145, 18, '2008-05-16 04:13:16', '1985-12-05 07:42:45'),
       (19, 147, 19, '2011-10-18 19:00:50', '2020-10-06 01:50:39'),
       (20, 148, 20, '2013-02-03 11:16:22', '1987-09-08 14:43:20'),
       (21, 150, 21, '1980-03-08 01:49:08', '2014-08-02 22:43:01'),
       (22, 154, 22, '2008-12-06 05:10:36', '2006-12-12 18:04:22'),
       (23, 157, 23, '2003-10-26 00:12:43', '1975-04-23 13:08:06'),
       (24, 158, 24, '2015-12-21 00:19:43', '1992-11-07 03:03:46'),
       (25, 160, 25, '2001-08-27 13:20:48', '1985-05-08 19:27:21'),
       (26, 161, 26, '1987-10-28 05:26:23', '1971-02-02 13:05:38'),
       (27, 164, 27, '1982-10-20 21:53:16', '1992-06-01 02:56:54'),
       (28, 165, 28, '2014-07-02 22:43:11', '1991-01-25 05:27:44'),
       (29, 166, 29, '1972-05-11 21:11:27', '2018-06-28 21:32:00'),
       (30, 167, 30, '1995-09-17 05:43:52', '2017-04-24 14:28:07'),
       (31, 170, 31, '1986-12-26 21:40:42', '2015-01-07 00:15:39'),
       (32, 178, 32, '2008-02-11 21:38:32', '2022-02-18 18:38:39'),
       (33, 179, 33, '1998-04-29 05:54:17', '1995-07-07 23:41:06'),
       (34, 180, 34, '2006-10-09 00:30:24', '1988-03-01 01:32:16'),
       (35, 181, 35, '1995-12-04 02:49:13', '2015-12-23 05:32:32'),
       (36, 182, 36, '1992-09-05 21:31:52', '1990-05-15 16:58:06'),
       (37, 183, 37, '2018-02-23 00:19:30', '2011-01-28 03:35:05'),
       (38, 185, 38, '2003-02-14 17:13:42', '1994-09-25 08:23:27'),
       (39, 188, 39, '2018-03-19 13:29:44', '1981-06-22 16:05:40'),
       (40, 189, 40, '1979-02-02 11:15:10', '1982-07-29 14:10:32'),
       (41, 191, 41, '1987-08-23 02:28:58', '2010-07-11 23:14:37'),
       (42, 192, 42, '1971-03-03 04:57:02', '1976-03-21 13:10:40'),
       (43, 193, 43, '1998-09-05 01:42:48', '2017-11-12 10:07:57'),
       (44, 194, 44, '2003-09-18 00:29:34', '2009-10-26 07:34:19'),
       (45, 195, 45, '2005-04-21 20:59:40', '1996-04-25 05:19:26'),
       (46, 196, 46, '2008-07-31 20:31:47', '1976-08-19 10:25:31'),
       (47, 198, 47, '2007-08-04 13:49:12', '1986-09-13 06:15:20'),
       (48, 200, 48, '2015-07-20 18:43:38', '2000-02-13 16:04:34'),
       (49, 101, 49, '2001-11-04 13:54:12', '2021-10-30 01:39:21'),
       (50, 102, 50, '1997-09-24 13:42:51', '1987-07-22 22:37:01'),
       (51, 103, 51, '1974-11-24 02:40:45', '1977-03-21 17:33:58'),
       (52, 104, 52, '1991-05-20 20:59:02', '2004-03-30 15:32:51'),
       (53, 105, 53, '2002-06-15 20:37:05', '2008-07-16 04:49:55'),
       (54, 107, 54, '2014-09-05 03:59:59', '2014-04-12 04:52:13'),
       (55, 108, 55, '2021-04-11 01:48:18', '1992-10-14 15:08:35'),
       (56, 110, 56, '2003-03-03 05:07:02', '1981-04-30 13:36:57'),
       (57, 115, 57, '1989-01-15 09:09:30', '1976-08-09 00:21:14'),
       (58, 118, 58, '1979-05-13 03:04:35', '2015-06-09 08:31:35'),
       (59, 119, 59, '2021-05-12 09:17:55', '2014-10-20 16:35:28'),
       (60, 121, 60, '1994-06-30 10:18:59', '1999-08-02 23:40:56'),
       (61, 123, 61, '1992-08-15 00:28:07', '1989-09-03 11:45:57'),
       (62, 124, 62, '1990-06-15 16:19:29', '1974-12-14 17:54:55'),
       (63, 127, 63, '1973-05-12 17:27:59', '2002-02-06 03:19:26'),
       (64, 139, 64, '2018-04-22 04:13:09', '1973-03-13 06:06:52'),
       (65, 141, 65, '1980-07-14 08:53:13', '2001-02-21 00:44:02'),
       (66, 145, 66, '2006-01-20 13:32:42', '1970-04-26 15:06:20'),
       (67, 147, 67, '1983-08-20 04:41:48', '2005-03-27 10:30:52'),
       (68, 148, 68, '2017-09-04 17:43:49', '1991-11-02 06:29:35'),
       (69, 150, 69, '2019-06-14 17:04:57', '1976-08-27 18:45:27'),
       (70, 154, 70, '1977-04-17 03:10:33', '1992-08-12 23:42:21'),
       (71, 157, 71, '1994-09-04 10:21:21', '1976-11-29 21:32:18'),
       (72, 158, 72, '1987-11-23 05:26:59', '2000-10-14 23:12:26'),
       (73, 160, 73, '1972-06-28 21:21:57', '1973-11-27 12:41:02'),
       (74, 161, 74, '1974-06-04 01:41:41', '2015-06-17 10:34:54'),
       (75, 164, 75, '2009-09-23 09:24:31', '2004-12-07 19:25:26'),
       (76, 165, 76, '2007-03-07 01:43:52', '1999-06-07 00:56:26'),
       (77, 166, 77, '2018-10-03 23:16:52', '2000-12-04 15:39:47'),
       (78, 167, 78, '1995-07-30 10:15:18', '2004-07-19 17:12:13'),
       (79, 170, 79, '2019-09-08 23:58:52', '2018-11-26 18:03:30'),
       (80, 178, 80, '1981-08-18 11:33:49', '1997-07-26 09:52:50'),
       (81, 179, 81, '1976-03-05 05:18:06', '1974-12-21 01:57:55'),
       (82, 180, 82, '1987-02-13 17:00:33', '1998-01-17 07:29:41'),
       (83, 181, 83, '1998-02-12 09:51:24', '2020-09-28 10:13:20'),
       (84, 182, 84, '2006-03-24 00:12:13', '1996-05-01 11:06:48'),
       (85, 183, 85, '2005-08-20 01:46:14', '1979-06-04 12:47:43'),
       (86, 185, 86, '2014-05-19 10:21:15', '1983-02-19 01:34:14'),
       (87, 188, 87, '1992-11-26 03:51:48', '2006-08-03 20:40:54'),
       (88, 189, 88, '2012-02-08 08:13:59', '1985-06-03 02:01:32'),
       (89, 191, 89, '1977-02-15 11:04:45', '2018-10-01 11:46:28'),
       (90, 192, 90, '2020-10-12 18:10:54', '1981-10-18 13:15:44'),
       (91, 193, 91, '1980-02-27 17:21:25', '1983-10-13 20:03:18'),
       (92, 194, 92, '1992-12-03 11:47:26', '1975-11-30 09:17:44'),
       (93, 195, 93, '1975-03-11 17:43:46', '1977-08-03 11:33:34'),
       (94, 196, 94, '2005-11-03 11:00:04', '1977-03-02 23:56:19'),
       (95, 198, 95, '1972-03-18 11:27:16', '1975-11-12 19:26:15'),
       (96, 200, 96, '2021-12-07 17:04:47', '2022-03-11 06:09:27'),
       (97, 101, 97, '1980-06-24 08:52:40', '2011-05-07 01:27:21'),
       (98, 102, 98, '1988-02-11 01:13:04', '2019-06-28 05:37:22'),
       (99, 103, 99, '1985-02-11 13:42:44', '2018-12-30 21:32:03'),
       (100, 104, 100, '1994-04-13 03:10:27', '1974-04-12 23:53:29');
/*!40000 ALTER TABLE `booking`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses_for_rent`
--

DROP TABLE IF EXISTS `houses_for_rent`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses_for_rent`
(
    `id`             bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `house_type_id`  bigint(20) unsigned NOT NULL,
    `number_of_beds` bigint(20) DEFAULT NULL COMMENT 'Количество спальных мест',
    `address_id`     bigint(20) unsigned NOT NULL COMMENT 'Адрес',
    PRIMARY KEY (`id`),
    KEY `house_type_id` (`house_type_id`),
    KEY `address_id` (`address_id`),
    CONSTRAINT `houses_for_rent_ibfk_1` FOREIGN KEY (`house_type_id`) REFERENCES `houses_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `houses_for_rent_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses_for_rent`
--

LOCK TABLES `houses_for_rent` WRITE;
/*!40000 ALTER TABLE `houses_for_rent`
    DISABLE KEYS */;
INSERT INTO `houses_for_rent`
VALUES (1, 1, 11, 1),
       (2, 2, 16, 2),
       (3, 3, 6, 3),
       (4, 4, 19, 4),
       (5, 5, 7, 5),
       (6, 6, 6, 6),
       (7, 7, 17, 7),
       (8, 8, 6, 8),
       (9, 9, 15, 9),
       (10, 10, 16, 10),
       (11, 11, 18, 11),
       (12, 12, 17, 12),
       (13, 13, 7, 13),
       (14, 14, 6, 14),
       (15, 15, 10, 15),
       (16, 16, 8, 16),
       (17, 17, 18, 17),
       (18, 18, 12, 18),
       (19, 19, 17, 19),
       (20, 20, 10, 20),
       (21, 1, 4, 21),
       (22, 2, 1, 22),
       (23, 3, 5, 23),
       (24, 4, 17, 24),
       (25, 5, 12, 25),
       (26, 6, 18, 26),
       (27, 7, 13, 27),
       (28, 8, 2, 28),
       (29, 9, 5, 29),
       (30, 10, 8, 30),
       (31, 11, 12, 31),
       (32, 12, 3, 32),
       (33, 13, 17, 33),
       (34, 14, 16, 34),
       (35, 15, 18, 35),
       (36, 16, 11, 36),
       (37, 17, 5, 37),
       (38, 18, 11, 38),
       (39, 19, 6, 39),
       (40, 20, 14, 40),
       (41, 1, 15, 41),
       (42, 2, 20, 42),
       (43, 3, 14, 43),
       (44, 4, 16, 44),
       (45, 5, 14, 45),
       (46, 6, 9, 46),
       (47, 7, 20, 47),
       (48, 8, 6, 48),
       (49, 9, 11, 49),
       (50, 10, 10, 50),
       (51, 11, 13, 51),
       (52, 12, 3, 52),
       (53, 13, 14, 53),
       (54, 14, 15, 54),
       (55, 15, 6, 55),
       (56, 16, 5, 56),
       (57, 17, 9, 57),
       (58, 18, 18, 58),
       (59, 19, 7, 59),
       (60, 20, 13, 60),
       (61, 1, 7, 61),
       (62, 2, 20, 62),
       (63, 3, 3, 63),
       (64, 4, 1, 64),
       (65, 5, 16, 65),
       (66, 6, 11, 66),
       (67, 7, 17, 67),
       (68, 8, 9, 68),
       (69, 9, 5, 69),
       (70, 10, 10, 70),
       (71, 11, 8, 71),
       (72, 12, 15, 72),
       (73, 13, 19, 73),
       (74, 14, 8, 74),
       (75, 15, 4, 75),
       (76, 16, 9, 76),
       (77, 17, 13, 77),
       (78, 18, 6, 78),
       (79, 19, 8, 79),
       (80, 20, 12, 80),
       (81, 1, 16, 81),
       (82, 2, 11, 82),
       (83, 3, 9, 83),
       (84, 4, 3, 84),
       (85, 5, 17, 85),
       (86, 6, 17, 86),
       (87, 7, 1, 87),
       (88, 8, 10, 88),
       (89, 9, 6, 89),
       (90, 10, 19, 90),
       (91, 11, 5, 91),
       (92, 12, 9, 92),
       (93, 13, 12, 93),
       (94, 14, 18, 94),
       (95, 15, 17, 95),
       (96, 16, 1, 96),
       (97, 17, 3, 97),
       (98, 18, 18, 98),
       (99, 19, 8, 99),
       (100, 20, 16, 100);
/*!40000 ALTER TABLE `houses_for_rent`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses_photos`
--

DROP TABLE IF EXISTS `houses_photos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses_photos`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `house_id`   bigint(20) unsigned                     NOT NULL,
    `file_name`  varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `size`       int(11)                                            DEFAULT NULL,
    `metadata`   longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
    `created_at` datetime                                           DEFAULT current_timestamp(),
    `updated_at` datetime                                           DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`id`),
    KEY `house_id` (`house_id`),
    CONSTRAINT `houses_photos_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses_for_rent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses_photos`
--

LOCK TABLES `houses_photos` WRITE;
/*!40000 ALTER TABLE `houses_photos`
    DISABLE KEYS */;
INSERT INTO `houses_photos`
VALUES (1, 1, 'optio', 6052653, '6489', '1972-09-04 00:30:44', '1980-10-02 15:46:18'),
       (2, 2, 'eius', 23981, '6282', '1987-08-21 04:35:03', '2012-07-02 00:46:37'),
       (3, 3, 'et', 9781, '9696', '2022-03-01 19:36:23', '1994-10-23 08:21:16'),
       (4, 4, 'eum', 73147990, '6472', '1987-05-28 04:31:10', '2012-11-27 16:28:04'),
       (5, 5, 'pariatur', 0, '9040', '1975-12-18 11:00:01', '1979-01-05 22:01:39'),
       (6, 6, 'reiciendis', 85, '3628', '1972-12-29 12:20:08', '1972-04-10 21:45:12'),
       (7, 7, 'modi', 45816075, '5897', '2016-10-13 04:20:22', '1995-05-21 09:53:31'),
       (8, 8, 'commodi', 8769379, '9554', '1995-04-07 08:28:04', '2016-06-03 12:09:30'),
       (9, 9, 'est', 93, '2959', '1993-01-03 19:36:41', '1995-03-10 01:48:23'),
       (10, 10, 'deserunt', 1, '7155', '1988-04-21 15:54:59', '1983-03-18 04:35:37'),
       (11, 11, 'cumque', 691838, '7316', '1990-10-17 06:03:17', '1985-03-14 16:58:48'),
       (12, 12, 'ut', 0, '2838', '2002-09-01 08:25:11', '1971-06-03 14:14:13'),
       (13, 13, 'consequatur', 12275, '4587', '2003-11-17 02:10:34', '1999-04-16 21:55:13'),
       (14, 14, 'libero', 2444280, '4817', '1993-12-07 23:03:14', '1971-05-09 23:07:44'),
       (15, 15, 'delectus', 826801754, '1392', '2015-09-11 19:21:48', '2003-01-09 08:21:51'),
       (16, 16, 'aperiam', 252309768, '8788', '1978-12-21 16:16:15', '2005-02-23 01:51:22'),
       (17, 17, 'id', 127, '2455', '1998-02-04 07:58:14', '1981-09-18 18:02:23'),
       (18, 18, 'rerum', 89929, '8360', '2016-09-02 22:57:53', '1976-01-17 19:39:15'),
       (19, 19, 'vero', 0, '2715', '2007-12-01 12:51:39', '2005-07-10 08:06:32'),
       (20, 20, 'sequi', 888, '6654', '1985-06-30 14:00:30', '2010-06-08 20:22:48'),
       (21, 21, 'quisquam', 8237, '6223', '1972-02-16 00:22:30', '1999-01-20 07:21:15'),
       (22, 22, 'et', 63, '3814', '1972-11-02 13:41:05', '1978-01-09 08:54:47'),
       (23, 23, 'nobis', 7988822, '2790', '2013-06-17 16:12:47', '1981-12-01 15:22:12'),
       (24, 24, 'accusantium', 52806, '3484', '2001-07-19 07:02:55', '2000-01-09 22:01:13'),
       (25, 25, 'ad', 18955440, '9718', '1976-06-26 22:29:14', '1970-08-17 19:35:07'),
       (26, 26, 'ut', 78059317, '7287', '2000-06-29 20:25:23', '2009-07-17 23:00:01'),
       (27, 27, 'ab', 34620, '9366', '1990-09-06 09:33:57', '1980-07-25 05:03:27'),
       (28, 28, 'autem', 8, '8743', '2011-06-01 00:14:28', '2007-04-27 02:08:28'),
       (29, 29, 'reiciendis', 7203799, '5726', '1979-04-29 02:00:06', '1992-12-03 08:39:27'),
       (30, 30, 'explicabo', 7, '3148', '2009-06-17 21:45:33', '2016-08-19 22:42:25'),
       (31, 31, 'minus', 10, '1584', '1975-04-12 20:20:54', '1995-05-06 16:59:20'),
       (32, 32, 'quaerat', 706406255, '9036', '1995-11-25 17:12:21', '1970-03-25 06:45:26'),
       (33, 33, 'quibusdam', 942385, '1738', '2019-06-05 13:38:45', '1999-04-11 03:22:02'),
       (34, 34, 'sapiente', 4, '5210', '2010-11-10 12:30:36', '2019-09-18 03:56:17'),
       (35, 35, 'exercitationem', 376793, '8741', '2010-11-03 04:24:32', '2015-10-08 23:50:12'),
       (36, 36, 'ut', 3294, '7714', '1981-11-11 16:30:57', '1987-04-26 12:39:17'),
       (37, 37, 'rerum', 32408, '6161', '2000-07-25 13:46:04', '1978-02-28 20:18:19'),
       (38, 38, 'vel', 0, '5938', '2004-02-17 18:32:57', '2008-05-15 10:32:41'),
       (39, 39, 'omnis', 5433806, '9304', '2013-08-22 13:44:18', '2005-09-02 10:32:43'),
       (40, 40, 'pariatur', 0, '6085', '2020-05-20 15:19:58', '1986-03-20 00:14:36'),
       (41, 41, 'vel', 39054138, '5391', '1994-05-11 09:22:59', '2007-07-31 06:15:36'),
       (42, 42, 'aut', 8881691, '2033', '2018-05-10 10:50:23', '1991-03-22 06:59:37'),
       (43, 43, 'rerum', 593, '2381', '2007-06-11 10:10:48', '2004-05-31 21:30:50'),
       (44, 44, 'eos', 5612, '9208', '1997-04-13 02:32:34', '1996-04-03 10:56:01'),
       (45, 45, 'quis', 784096, '8031', '1995-01-03 21:01:48', '1982-02-10 00:51:52'),
       (46, 46, 'doloribus', 61515211, '7206', '1992-09-01 23:08:27', '2021-07-11 21:16:36'),
       (47, 47, 'sit', 7246, '2818', '2009-10-20 18:02:19', '2021-11-23 18:32:51'),
       (48, 48, 'tempora', 3, '2654', '2001-09-06 23:28:50', '1985-10-05 16:14:30'),
       (49, 49, 'qui', 627, '9852', '2020-05-07 09:32:37', '2013-04-24 04:53:35'),
       (50, 50, 'molestias', 6280, '3806', '2005-03-14 04:40:15', '2003-07-20 18:54:21'),
       (51, 51, 'quae', 560536362, '6119', '2003-11-08 23:55:36', '1995-02-03 09:04:57'),
       (52, 52, 'rerum', 2, '7053', '1997-07-10 03:42:37', '2006-10-31 19:43:07'),
       (53, 53, 'at', 0, '2084', '2000-08-14 16:03:45', '1987-09-26 16:00:16'),
       (54, 54, 'totam', 0, '3208', '2016-02-01 23:40:46', '2019-07-24 10:46:36'),
       (55, 55, 'a', 0, '7443', '1997-09-28 00:18:18', '1987-03-28 13:26:32'),
       (56, 56, 'occaecati', 69, '1618', '1973-01-28 19:22:38', '1992-02-04 07:54:06'),
       (57, 57, 'facilis', 7785144, '8371', '1992-09-06 20:18:57', '2018-07-02 12:06:43'),
       (58, 58, 'sint', 9960648, '5880', '2013-06-15 22:10:03', '2000-06-27 11:47:17'),
       (59, 59, 'velit', 0, '4229', '1996-10-13 08:09:15', '1991-05-10 23:23:55'),
       (60, 60, 'sequi', 644996991, '6068', '2022-04-12 14:16:32', '1995-10-24 13:26:43'),
       (61, 61, 'consequatur', 56, '8255', '1982-07-25 20:45:00', '2003-05-30 09:42:13'),
       (62, 62, 'a', 23688518, '4227', '2014-03-04 23:10:28', '2016-12-28 07:11:47'),
       (63, 63, 'nulla', 2, '2644', '2007-08-24 00:33:59', '1996-11-14 00:45:31'),
       (64, 64, 'quo', 34277, '3148', '2015-08-16 23:09:32', '2013-08-02 22:06:59'),
       (65, 65, 'eos', 5509, '3600', '1983-04-07 08:29:55', '1980-08-19 07:35:16'),
       (66, 66, 'quae', 954236, '3992', '1999-04-26 05:15:42', '2010-06-17 03:30:30'),
       (67, 67, 'cumque', 0, '5486', '2014-02-14 22:28:20', '2017-01-03 00:13:55'),
       (68, 68, 'consequuntur', 4226, '2457', '1977-10-20 19:26:21', '1996-05-02 16:50:43'),
       (69, 69, 'quisquam', 38600, '4128', '1994-07-28 21:58:55', '2006-11-21 23:23:33'),
       (70, 70, 'ut', 826, '4378', '1987-09-03 15:16:01', '1985-10-17 19:54:01'),
       (71, 71, 'quidem', 16264566, '9498', '1983-07-07 04:44:26', '1990-06-23 06:27:17'),
       (72, 72, 'consectetur', 5, '9985', '1980-10-20 05:00:12', '1974-09-09 18:28:41'),
       (73, 73, 'consequatur', 8104192, '9296', '2019-12-06 20:15:41', '1975-05-06 05:13:58'),
       (74, 74, 'repellat', 52, '8424', '2009-05-27 09:24:15', '1972-03-10 09:04:43'),
       (75, 75, 'in', 888786036, '5363', '1977-05-11 02:48:43', '2015-11-19 15:36:40'),
       (76, 76, 'ipsum', 1, '8679', '1992-12-17 06:00:16', '2009-03-02 19:32:11'),
       (77, 77, 'reprehenderit', 1095, '7722', '1986-05-18 22:11:22', '2001-08-13 23:48:23'),
       (78, 78, 'laboriosam', 193, '9607', '2016-06-06 04:27:15', '1992-10-03 17:03:01'),
       (79, 79, 'debitis', 89661866, '4450', '1983-02-10 19:37:08', '2014-09-26 21:58:14'),
       (80, 80, 'inventore', 397108, '3316', '2006-09-30 17:12:27', '1971-06-27 22:04:05'),
       (81, 81, 'ipsam', 296267373, '8114', '1984-10-10 02:52:38', '1995-03-06 13:19:20'),
       (82, 82, 'esse', 6, '1362', '2000-08-13 08:50:49', '2005-05-08 09:13:57'),
       (83, 83, 'eius', 72532522, '8575', '2010-01-27 19:04:51', '2011-02-02 04:55:04'),
       (84, 84, 'magni', 9644424, '4521', '1979-03-11 04:50:51', '2001-05-15 06:11:09'),
       (85, 85, 'sit', 63777, '5342', '1977-06-11 15:05:19', '1981-02-21 08:55:10'),
       (86, 86, 'quis', 8, '7371', '2008-03-28 23:20:09', '2013-08-09 15:41:04'),
       (87, 87, 'consequatur', 12, '7356', '2008-08-22 14:29:41', '2021-11-14 09:53:18'),
       (88, 88, 'nihil', 3, '9506', '1973-02-19 09:54:42', '1982-03-02 07:19:47'),
       (89, 89, 'minima', 922, '5514', '1994-09-07 07:00:52', '1973-08-13 17:34:28'),
       (90, 90, 'sint', 1255, '8258', '1990-10-13 17:42:31', '1974-10-28 23:50:13'),
       (91, 91, 'pariatur', 79, '6644', '1995-06-19 13:29:05', '2016-12-27 22:09:18'),
       (92, 92, 'tempore', 8728525, '7660', '2012-12-23 07:28:01', '2011-02-24 05:20:01'),
       (93, 93, 'hic', 45892, '7496', '1986-06-23 17:53:34', '1971-06-01 08:30:23'),
       (94, 94, 'provident', 19720, '4577', '1978-02-09 12:40:55', '2009-02-17 09:27:59'),
       (95, 95, 'aspernatur', 36721698, '5928', '2009-05-02 02:23:53', '1980-02-22 18:00:45'),
       (96, 96, 'maxime', 2123, '6635', '2012-02-29 23:10:08', '1976-10-05 09:52:01'),
       (97, 97, 'minus', 5261, '5917', '1994-11-05 06:49:52', '1972-10-27 18:56:23'),
       (98, 98, 'nemo', 85834, '9741', '1976-07-31 21:06:59', '1998-11-05 01:38:25'),
       (99, 99, 'praesentium', 12103, '4005', '2011-04-06 15:12:59', '1974-08-07 05:10:14'),
       (100, 100, 'laudantium', 83, '8810', '2015-07-11 01:20:21', '1977-08-20 21:05:50');
/*!40000 ALTER TABLE `houses_photos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses_reviews`
--

DROP TABLE IF EXISTS `houses_reviews`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses_reviews`
(
    `house_id`     bigint(20) unsigned NOT NULL,
    `from_user_id` bigint(20) unsigned NOT NULL,
    `rating`       enum ('0','1','2','3','4','5') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `review`       varchar(255) COLLATE utf8mb4_unicode_ci                   DEFAULT NULL,
    PRIMARY KEY (`house_id`, `from_user_id`),
    KEY `from_user_id` (`from_user_id`),
    CONSTRAINT `houses_reviews_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses_for_rent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `houses_reviews_ibfk_2` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses_reviews`
--

LOCK TABLES `houses_reviews` WRITE;
/*!40000 ALTER TABLE `houses_reviews`
    DISABLE KEYS */;
INSERT INTO `houses_reviews`
VALUES (1, 101, '3',
        'Harum est quae in aut voluptatem dolores qui. Aut dolor ratione enim laudantium delectus. Deleniti ut qui error dolore modi voluptas dolorem necessitatibus.'),
       (2, 102, '0',
        'Similique non ut non ab. Porro debitis dolor consectetur voluptas soluta eos eos. Suscipit illo quidem est assumenda aspernatur. Consequuntur autem dolorem at alias aut velit libero. Earum molestias fuga rerum culpa in aliquid porro.'),
       (3, 103, '0',
        'Rerum ratione aut vel tempore. Ullam fugiat fugiat et aut. Et nihil illum accusantium fugiat et quo.'),
       (4, 104, '3',
        'Facilis mollitia magnam ad officiis. Nisi dicta earum nesciunt labore qui architecto. Aspernatur necessitatibus velit earum et iure ipsa laborum.'),
       (5, 105, '5',
        'Magni ullam rerum ea in illo ipsa sequi. Quo eaque tempore et. Sunt non modi officiis numquam perspiciatis.'),
       (6, 107, '5',
        'Dolorum quis perferendis recusandae temporibus minima ut. Et iste rem consequuntur harum et voluptatem. Vitae itaque ipsa ducimus et optio.'),
       (7, 108, '2',
        'Sunt esse cum sed est suscipit voluptas. Consequatur aspernatur reprehenderit praesentium perspiciatis eos. Saepe dignissimos dolorem animi impedit aut. Odio ut qui molestias minus ipsam iure. Quidem quas doloribus dolores et qui provident est.'),
       (8, 110, '2',
        'Nemo et corrupti in incidunt repudiandae. Saepe rerum occaecati odio eos adipisci. Atque suscipit officia ut et et. Numquam possimus magni vero expedita. Animi delectus quia voluptatum numquam voluptas quam labore asperiores.'),
       (9, 115, '0', 'Est asperiores voluptates est porro. Et ipsam cum et iure.'),
       (10, 118, '4',
        'Dolorem quos omnis a corrupti. Enim nesciunt rerum quaerat et ex ut odio. Quibusdam repellendus ducimus molestias. Et qui nihil minima fugit.'),
       (11, 119, '4',
        'Error repudiandae distinctio est minus alias perspiciatis. Libero voluptas ex enim dolor. Aut ab reprehenderit voluptatem nihil. Voluptatem ipsam totam dignissimos delectus.'),
       (12, 121, '0',
        'Qui omnis dicta est ut iure incidunt quia. Eos nemo fugiat non rerum et eveniet ut placeat. Suscipit tenetur incidunt consectetur quas quia. Eveniet quae quia quia eaque dicta dicta.'),
       (13, 123, '0',
        'Ut animi quod adipisci odio qui fugiat dignissimos. Laboriosam sunt et repellat qui. Voluptas sed quod fugit perferendis.'),
       (14, 124, '0',
        'Et esse dolorum officiis eius neque. Et saepe eos et ut at rerum tenetur. Et repellat et molestias soluta a nulla. Dignissimos praesentium qui iure esse odio.'),
       (15, 127, '3',
        'Ut rerum ut similique repudiandae necessitatibus blanditiis nulla. Deleniti corrupti nemo porro debitis. Qui nostrum incidunt sunt natus nemo blanditiis.'),
       (16, 139, '1',
        'Debitis magni aut eos. Perferendis dolor voluptas aut et accusamus repudiandae. Temporibus deserunt non quo.'),
       (17, 141, '4',
        'Sint rem alias et corrupti amet voluptatem vero. Esse aliquid enim sunt ea. Ea molestias est deserunt iure nisi id.'),
       (18, 145, '4',
        'Aliquam laborum eos et et consequatur. Molestiae aut placeat quae consequatur. Est mollitia sint autem ab quo iusto.'),
       (19, 147, '3',
        'Esse vel voluptatum maiores laborum. Incidunt nulla et tempora quia consequuntur magnam. Aperiam laborum nostrum blanditiis et velit enim voluptas. Consectetur alias ut ut aut ipsam repudiandae.'),
       (20, 148, '2',
        'Aut est saepe voluptatibus corrupti laborum et et. Voluptatem quo accusamus dolorem quis qui. Quam hic aut et dolor accusantium.'),
       (21, 150, '1',
        'Maiores ut asperiores iusto vel voluptatum beatae. Nam omnis et ad voluptatibus. Dolore qui quo qui fuga.'),
       (22, 154, '4',
        'Ullam quia provident inventore. Quod eos aliquid dolore omnis accusamus. Quis qui voluptatum rerum cupiditate.'),
       (23, 157, '1',
        'Dolorem saepe illo velit eum. Et nesciunt odio reiciendis. Dolor numquam quo temporibus sint dicta quia sequi ipsam.'),
       (24, 158, '1',
        'Deserunt rerum dolores rerum quam. Laudantium aut qui blanditiis in. Dolore maiores aliquid officiis ut est.'),
       (25, 160, '0',
        'Et necessitatibus et a mollitia iste perferendis assumenda. Aut qui maiores facere rerum et dolorem. Neque quam recusandae rerum sed voluptas iure. Eveniet sed facere inventore.'),
       (26, 161, '1',
        'Aperiam architecto non est nesciunt. Voluptatem harum et incidunt. Rerum quia deleniti enim eligendi nemo optio ad consequatur. Omnis doloribus non fuga in repellat.'),
       (27, 164, '5',
        'Doloremque et perspiciatis qui exercitationem fugit. Beatae accusamus tenetur praesentium voluptate et alias. Nihil minima rerum exercitationem autem et recusandae rerum. Ut quo laborum ipsam itaque quis optio.'),
       (28, 165, '5',
        'Necessitatibus non laborum non aut eos nesciunt amet. Eveniet fugiat vitae velit vero hic. Rem illum sint totam alias. Qui sunt et autem enim et dolor assumenda.'),
       (29, 166, '1',
        'Dignissimos dolores minima sapiente placeat et repudiandae repellendus. In vel minus sunt odit debitis. Non aut optio enim. Quos qui voluptas sed et quisquam aliquam nostrum maiores.'),
       (30, 167, '1',
        'Non a repellat corporis quam. Et rerum quos non quas dolore. Vitae beatae enim sunt explicabo debitis dolorem. Dolore aut odit veniam non.'),
       (31, 170, '5',
        'Amet eligendi itaque eos et numquam fuga dolorem ea. Saepe saepe eos iusto dolorem. In quia dolorem et placeat minus sapiente quos aut. Consequuntur ipsam numquam totam debitis quam quasi deserunt.'),
       (32, 178, '1',
        'Et odit ut et ipsa distinctio. Ut magni ut qui sit. Molestiae ullam eum omnis error placeat necessitatibus. Minima rerum consequatur delectus.'),
       (33, 179, '5',
        'Blanditiis quo et quasi necessitatibus nam. Voluptatem non numquam voluptatem sit commodi saepe. Accusamus beatae aperiam eos quis sit. Pariatur laudantium et nesciunt architecto non.'),
       (34, 180, '5',
        'Excepturi quia adipisci totam et. Ea dolorem nisi dolores voluptas eos recusandae molestiae. Animi officiis corporis praesentium vel libero. Similique architecto quam rerum et et.'),
       (35, 181, '4',
        'Eligendi omnis esse praesentium. Totam explicabo dolorem velit. Molestiae mollitia quo alias dolore consequuntur saepe nisi. Sunt totam quasi aut laudantium et voluptate at.'),
       (36, 182, '2',
        'Distinctio nisi quas id non inventore optio et. Neque pariatur commodi quia quisquam veritatis nobis quia. Eum dignissimos natus ipsum sit totam.'),
       (37, 183, '1', 'Non velit eum et molestias iste. Et ipsam sunt qui ut. Est ea iusto et placeat consectetur.'),
       (38, 185, '0',
        'Qui deserunt dolores sapiente quisquam placeat. Et sit libero modi. Est fuga aspernatur dolor quam commodi.'),
       (39, 188, '0',
        'Temporibus recusandae qui et deleniti sed quia. Ullam molestiae maiores eveniet excepturi enim ea. Possimus non voluptas modi voluptatem. Ducimus porro iure est nemo fuga a modi.'),
       (40, 189, '0', 'Nobis maxime nulla dolor in. Debitis doloremque repudiandae tempore quasi.'),
       (41, 191, '3',
        'Ducimus rerum reiciendis vel sit. Optio laborum qui et nihil omnis. Ad distinctio sapiente quasi accusamus quae omnis ullam qui. Aspernatur error ea ut veritatis molestiae quisquam illum.'),
       (42, 192, '5',
        'Et aut qui et consequuntur est amet. Doloribus autem magni amet. Est hic at exercitationem et unde qui aut. Sit voluptatem repudiandae hic eaque qui.'),
       (43, 193, '1',
        'Quidem iste neque veritatis rerum corrupti officiis. Velit ut vel sint maiores repudiandae voluptatem dolorem. Voluptatem aut fuga cum magni dolor dolorum molestiae omnis. Ut suscipit qui nihil.'),
       (44, 194, '4',
        'Natus cum dolorem nemo omnis doloremque tempore magnam impedit. Officia sit sunt vero qui omnis. Asperiores tenetur distinctio neque id provident voluptas. Sit exercitationem suscipit est repudiandae tempore et.'),
       (45, 195, '5',
        'Quae qui sit sit nihil. Voluptas natus mollitia occaecati. Quaerat delectus soluta minus excepturi. Illum qui ad et. Necessitatibus et voluptatem accusantium sit corporis fuga qui.'),
       (46, 196, '3',
        'Odit nostrum illo expedita molestiae et. Vel sint et ut. Ullam rem quis ad nihil laboriosam sunt.'),
       (47, 198, '1',
        'Sapiente rerum sit temporibus maxime ut sit. Quaerat ut voluptas iure nihil fugit. Dolorum sequi quia tempore consequatur aspernatur eum accusamus. Aut harum maiores doloremque perspiciatis deserunt.'),
       (48, 200, '1',
        'Illum ex aut nam suscipit. Sint vel laborum rerum est voluptas dignissimos eius. Dolorum porro voluptatibus quia.'),
       (49, 101, '4',
        'Deserunt delectus doloribus commodi ab et corporis perspiciatis. Architecto ut a architecto sint sit veniam tempora. Asperiores et qui eius facilis quo earum consequuntur perferendis.'),
       (50, 102, '4',
        'Doloribus ex sit omnis non et. Dolorum eveniet est natus. Repellat facilis temporibus impedit voluptatem et.'),
       (51, 103, '4',
        'Sit enim illum ab ducimus ipsum. Non voluptates ab fugiat. Eos nam sed autem voluptatum fuga velit voluptates. Magni consequatur ullam laborum nemo.'),
       (52, 104, '1',
        'Fuga dolor explicabo consequatur nemo et. Dolores aut cupiditate vitae dolorum eveniet rem dolorum. Ea eius delectus eos similique quia vel nihil. Id ut est dicta quia dolore labore eveniet.'),
       (53, 105, '5',
        'A rerum est molestiae voluptas. Repellendus iure hic ad asperiores earum. Vel aut labore quisquam.'),
       (54, 107, '0',
        'Dolores et recusandae quasi nemo dolores. Laboriosam ut unde maiores quisquam et aut. Voluptatem aliquam ipsam esse neque quae dolore.'),
       (55, 108, '1',
        'Dolorum sed eveniet hic deleniti et iste. Mollitia autem nihil vero sint eaque quas earum et. Quas rerum omnis corrupti rerum ab consequatur debitis. Ratione tempora non pariatur et deserunt. Vel laudantium asperiores eum architecto.'),
       (56, 110, '3',
        'Rerum molestiae quia commodi enim. Exercitationem molestias aut sint velit occaecati neque. Recusandae soluta perferendis consequatur rem et fuga. Rem ea magni perferendis magni minima iure et aut.'),
       (57, 115, '4',
        'Recusandae tenetur dolorem quod nihil velit corporis debitis. Delectus voluptas praesentium et rerum enim blanditiis in.'),
       (58, 118, '3',
        'Omnis quia vel expedita officia consequatur ut quia. Et ut minima aliquid temporibus numquam officia molestias esse. Blanditiis nihil voluptatem sit. Aspernatur quia magni aut ipsum cum et autem.'),
       (59, 119, '2',
        'Architecto dolor explicabo harum perspiciatis ex hic dolore. Ut in id quasi fugit perferendis iure molestias. Id quam aut vel molestiae suscipit.'),
       (60, 121, '4',
        'Rerum eaque aliquid dolores praesentium sint provident. Ipsa dicta in voluptatem non rem explicabo facere soluta. At asperiores minus eaque voluptas voluptates earum nemo tempora.'),
       (61, 123, '5',
        'Architecto ratione architecto laudantium eos eaque ut magni. Sunt veniam voluptatibus vel sunt ut. Et reprehenderit accusantium repudiandae quo quam autem ea omnis. Recusandae culpa alias rerum aut et vel.'),
       (62, 124, '5',
        'Similique voluptate recusandae quis ad eius. Iure suscipit earum qui provident ut fuga distinctio. Ea quam laudantium mollitia eligendi nisi necessitatibus soluta. Molestiae eaque quo nesciunt voluptatem fuga repellendus minus.'),
       (63, 127, '2',
        'Labore quasi nisi in et sapiente nihil qui. Corporis quia mollitia voluptate cum. Voluptatum tempore aut totam. Eveniet at porro corrupti est inventore voluptatem. Nam nisi itaque et deleniti nemo laborum eos.'),
       (64, 139, '4',
        'Tenetur ex pariatur iure quia quos earum. Cum consequatur nobis sed consequatur et enim. Aspernatur aliquid molestiae soluta rerum. Voluptas natus repellat eius vel magni incidunt molestias magnam.'),
       (65, 141, '4',
        'Facere esse et neque labore sunt voluptas quia. Repellat tenetur quidem aut iusto et aliquam sint. Atque ut recusandae tempora rem ut molestiae qui.'),
       (66, 145, '2',
        'Accusantium in rem ipsa voluptas. Numquam recusandae eius ut animi dolores. In quam assumenda nemo consequuntur. Voluptas animi et eum. Assumenda natus enim cum sit culpa vel ipsum ea.'),
       (67, 147, '1',
        'Architecto eaque eum molestias minima omnis. Voluptatibus aut corrupti provident harum voluptas alias.'),
       (68, 148, '2',
        'Expedita et nisi necessitatibus aut non labore. Consequuntur nostrum qui nobis aspernatur maiores ut exercitationem. Odit reprehenderit est voluptates quod esse. Saepe mollitia minima quibusdam repellat optio voluptatibus soluta accusamus.'),
       (69, 150, '0',
        'Rerum at consequatur sit labore. Consequatur repudiandae omnis est velit nam. Non officia ut voluptatem provident nemo.'),
       (70, 154, '5',
        'Rerum labore omnis aut sapiente. Incidunt consectetur aut delectus hic accusamus enim sequi. Esse alias error hic ut.'),
       (71, 157, '4',
        'Animi tempore suscipit sequi et temporibus sed quae. Dicta est porro et dolorem dolorem sapiente vero. Quo et dolorum non quas sit. Dolores exercitationem optio iste iste sapiente porro omnis distinctio.'),
       (72, 158, '0',
        'Ipsam corrupti dolores doloremque. Adipisci eius officiis cupiditate sit perferendis alias nemo. Voluptas aut at voluptatum ut et. Corporis vero animi nisi beatae dolor quo in autem.'),
       (73, 160, '4',
        'Sit accusamus ab minima iusto dicta iure. Quis voluptas atque minus voluptates aliquam illo. Quas dolores omnis facere. Ad in maiores quia enim sed vero voluptates.'),
       (74, 161, '2',
        'Ex est quos omnis a. Doloremque et architecto excepturi est dolores. Et similique quis sed et quos. Est fugiat impedit dolorem ducimus qui ipsam quam.'),
       (75, 164, '1',
        'Neque omnis omnis dolorum ex neque. Inventore sed harum maiores veniam similique aliquid maxime. Optio velit dolores sed distinctio quis. Assumenda ipsum ipsam itaque sit.'),
       (76, 165, '4',
        'Neque sed omnis iusto at adipisci in et. Nisi qui nulla officiis doloribus. Doloribus molestias temporibus id voluptas error sed. Exercitationem deleniti neque repudiandae esse. Aut qui nesciunt reprehenderit fuga et dolorem.'),
       (77, 166, '4',
        'In nisi eum laudantium quaerat dolor. Est animi quas hic hic aperiam autem necessitatibus provident. Architecto quia nam eum possimus cumque eos nulla. Eum dolores eveniet et.'),
       (78, 167, '5',
        'Occaecati aliquam necessitatibus possimus nihil velit. Eius vitae architecto ea quae ut quaerat id. Cumque sed nisi earum est aspernatur amet qui. Reiciendis assumenda modi voluptas voluptatem saepe.'),
       (79, 170, '0',
        'Cum illo quia assumenda culpa corporis qui sapiente sapiente. Dolorem aperiam fugit nisi qui ut. Eum nihil sed quod quis omnis quibusdam. Delectus deleniti corporis sit quasi quas laudantium.'),
       (80, 178, '0',
        'Et ex itaque porro praesentium ea eum ut. Quis architecto ipsa repudiandae quos blanditiis. Magni sint quam illum assumenda voluptas minima impedit doloremque.'),
       (81, 179, '4',
        'Sed aliquid cumque fugiat consequatur quia sint quia. Quod non nemo consequuntur error reiciendis odio. Velit neque non voluptatem.'),
       (82, 180, '2',
        'Vel sit quia molestias eos et vel rerum. Ut debitis sequi consequatur. Iste reiciendis rem id culpa amet ut.'),
       (83, 181, '0',
        'Dolorum dolorem inventore iusto suscipit corrupti. Cupiditate omnis qui ut quo perferendis rem. Cupiditate veniam minus iste commodi quo ut.'),
       (84, 182, '0',
        'Fugit est quia tempore aliquid ipsum odio rerum. Dolores id labore consequatur minima tenetur. Qui eaque repellendus animi. Quisquam consequatur est deleniti.'),
       (85, 183, '5',
        'Sint in sapiente perspiciatis sit eveniet. Repudiandae veniam non autem. Blanditiis eos alias sapiente et totam odio et nihil. Repellendus et minus consequatur doloremque hic eos. Voluptatum aut tenetur rerum atque sint molestiae.'),
       (86, 185, '1',
        'Aliquid explicabo quidem maiores non voluptate iusto sunt. Ut quia aperiam dolorem a tempore neque facilis. Veritatis in incidunt libero eos exercitationem. Quidem quis explicabo dolore non a. Delectus ut reiciendis veritatis aut sunt libero.'),
       (87, 188, '4',
        'Quae fugit sit voluptates ea aut. Cum hic nemo blanditiis perspiciatis voluptas earum a. Laboriosam culpa perspiciatis non et.'),
       (88, 189, '4',
        'Iste quisquam eos ut enim. Officia tempora ad itaque et rerum non. Iure libero iste sed voluptatem. Et accusamus in rerum asperiores ipsam.'),
       (89, 191, '1',
        'Pariatur ex maiores provident. Placeat quaerat deleniti quas consequatur animi soluta. Nostrum inventore in veritatis sint dolorem aliquam quos eos. Eligendi quia natus sapiente repellat sit omnis velit.'),
       (90, 192, '3',
        'Laudantium dolorem id nostrum laudantium assumenda quis. Voluptatum voluptatem voluptatem doloremque. Nihil in et et aut enim ab dolorum. Perspiciatis minus et et non nesciunt. Officia voluptatem est libero aut.'),
       (91, 193, '2',
        'Laboriosam asperiores velit accusantium. Qui labore eos ullam blanditiis officia aperiam fuga illo. Qui eligendi magnam omnis voluptatem quae commodi et eius.'),
       (92, 194, '1',
        'Amet porro doloremque quod iusto ullam saepe maxime repellat. Est sunt delectus consequuntur quia. Modi est non harum ut necessitatibus.'),
       (93, 195, '2',
        'Laborum voluptatem harum quia unde dolore quaerat numquam minima. Magnam praesentium ipsa vero nulla et quisquam. Quo aperiam rem autem magni vero totam commodi. Reiciendis earum autem quis non possimus iusto. Et quo temporibus ex ut.'),
       (94, 196, '4',
        'Voluptas quo non ut nam. Voluptatem quibusdam est at nobis facere eos voluptas. Quis quae est qui nulla dolores corporis eum eos.'),
       (95, 198, '3',
        'Harum laudantium aut minus corporis est eligendi. Est repellendus reiciendis asperiores fugit est aliquam ullam. Expedita dolorem et dolores quidem cum. Aut unde dolore amet accusamus quaerat quae non accusamus. Odio repellendus aut itaque at eos ea.'),
       (96, 200, '4',
        'Vel qui eius accusantium inventore laborum sint. Animi quaerat aut qui asperiores et perferendis ut. Perferendis nam adipisci cum sed provident. Doloribus eligendi sequi labore odit.'),
       (97, 101, '4',
        'Soluta quo et ad quia recusandae architecto. Voluptas nihil expedita explicabo dolorem. Quos eveniet quis fugiat est.'),
       (98, 102, '5',
        'Laudantium cupiditate voluptatum suscipit est quo magni exercitationem. Recusandae accusamus eius et ut pariatur facilis. Sequi distinctio eaque aliquam.'),
       (99, 103, '0',
        'Quos repellat iure delectus iure quos dignissimos odio. Est est omnis dolore repudiandae perferendis error. Eius iste alias ut voluptas unde.'),
       (100, 104, '4',
        'Pariatur qui voluptatum voluptatibus sint minima. Et qui facere reiciendis sint vel incidunt. Non in iste officiis ut perferendis optio corrupti. Rem quia nobis reiciendis.');
/*!40000 ALTER TABLE `houses_reviews`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses_types`
--

DROP TABLE IF EXISTS `houses_types`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses_types`
(
    `id`   bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 21
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses_types`
--

LOCK TABLES `houses_types` WRITE;
/*!40000 ALTER TABLE `houses_types`
    DISABLE KEYS */;
INSERT INTO `houses_types`
VALUES (1, 'h'),
       (2, 'l'),
       (3, 't'),
       (4, 'p'),
       (5, 'h'),
       (6, 'g'),
       (7, 'e'),
       (8, 'n'),
       (9, 'v'),
       (10, 's'),
       (11, 'w'),
       (12, 's'),
       (13, 'h'),
       (14, 'i'),
       (15, 'l'),
       (16, 'h'),
       (17, 'o'),
       (18, 'k'),
       (19, 'g'),
       (20, 'm');
/*!40000 ALTER TABLE `houses_types`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages`
(
    `id`           bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `from_user_id` bigint(20) unsigned NOT NULL,
    `to_user_id`   bigint(20) unsigned NOT NULL,
    `message`      varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `from_user_id` (`from_user_id`),
    KEY `to_user_id` (`to_user_id`),
    CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages`
    DISABLE KEYS */;
INSERT INTO `messages`
VALUES (1, 101, 101,
        'Earum aliquam odio quia reprehenderit quod sit enim. Ex distinctio numquam sint ea occaecati. Iure deleniti voluptate veniam ducimus quod ipsam.'),
       (2, 102, 102,
        'Consequatur rerum accusantium dolorem dolor autem. Doloremque ut vitae autem repellendus consectetur modi. Est unde inventore sed. Quaerat eum in eligendi nihil harum a.'),
       (3, 103, 103,
        'Quasi earum facilis veritatis sit maiores nam. Qui vitae sunt in voluptatibus aut. Saepe dignissimos facere officia aut qui aut.'),
       (4, 104, 104,
        'Culpa earum similique nobis officia non reprehenderit. Rerum modi iusto laudantium. Eos sit a cupiditate voluptas non veniam.'),
       (5, 105, 105,
        'Dolores rerum voluptatum officia eligendi et. Eius harum praesentium rem perspiciatis. Occaecati maxime sit voluptatibus vero. Unde veniam et corporis iusto voluptatum.'),
       (6, 107, 107,
        'Dignissimos accusantium est officia officia veniam natus sed. Est sequi omnis ducimus est. Cum enim aperiam ut in.'),
       (7, 108, 108,
        'Vero voluptatibus mollitia dolor natus et dolor ducimus. Perferendis voluptas rerum sit ipsum. Qui est exercitationem vitae sed voluptas accusamus quasi.'),
       (8, 110, 110,
        'Et voluptate saepe eos iure sed atque asperiores. Debitis est at dicta quia sint cupiditate sed ut. Nostrum qui voluptas dolorem molestiae debitis sit.'),
       (9, 115, 115,
        'Qui animi ducimus veritatis et. Veniam optio quidem quam est eaque sit officiis. Voluptas omnis consectetur accusamus deleniti. Non eaque voluptatem dolor et iste quis est veniam.'),
       (10, 118, 118,
        'Ad beatae deserunt vel exercitationem ex. Vel similique vitae assumenda sed qui. Rerum sed cumque iure mollitia.'),
       (11, 119, 119,
        'Quos dolor ipsam occaecati dolore. Explicabo sit labore corporis dolor magni sed qui. Facilis labore magnam velit tempore quo consequatur eligendi.'),
       (12, 121, 121,
        'Debitis dicta rem ullam voluptas fugiat est. Ea ducimus asperiores enim libero perspiciatis ut. Veniam vero quam quos minima consequatur illum. Sint inventore alias ipsam est qui.'),
       (13, 123, 123,
        'Aut ut alias excepturi quasi id adipisci. Amet dignissimos ut at vitae ea. Voluptas et vel repellat delectus fugit magni debitis.'),
       (14, 124, 124, 'Vel similique in necessitatibus. Est ut dignissimos inventore est iste sed.'),
       (15, 127, 127,
        'Et vero magnam suscipit maxime autem voluptas similique. Totam perferendis ut eum. Odit molestiae aliquid eos praesentium similique.'),
       (16, 139, 139,
        'Odio quis qui cum expedita sunt et. Perspiciatis asperiores veniam reiciendis hic dolor. Esse nostrum sint nihil quia et tenetur.'),
       (17, 141, 141,
        'Voluptatibus nulla quisquam quas minima corporis. Aut et quo id cupiditate. Totam explicabo ipsam maxime velit aut.'),
       (18, 145, 145,
        'Quia odio aut est fugiat. In cupiditate cumque itaque et et. Quo dolores enim natus ut ullam assumenda rerum nobis. Atque voluptatum impedit quibusdam rerum saepe ipsum.'),
       (19, 147, 147,
        'Quibusdam voluptas dolorem qui vel. Harum nostrum ex quas officiis. Reprehenderit ipsum sapiente deserunt qui magni asperiores. Sit sed mollitia atque omnis.'),
       (20, 148, 148,
        'Qui voluptatibus sit magnam soluta totam. Aspernatur nemo aut omnis odit aliquam perferendis quae. Aperiam nihil est dolor. Tempora vel nihil consequuntur voluptates id voluptas sed.'),
       (21, 150, 150,
        'Provident harum harum accusantium dicta fuga voluptatem. Necessitatibus voluptatem in autem exercitationem voluptatem aut dolorem quae. Eum ut reiciendis adipisci nihil. Eos sed qui autem in cupiditate distinctio.'),
       (22, 154, 154,
        'Neque voluptatum tempora dolor cum quo optio maxime odio. Error consequatur saepe laboriosam quia. Iste molestiae voluptate impedit reiciendis cupiditate.'),
       (23, 157, 157,
        'Repudiandae unde veniam omnis numquam aliquid dicta dignissimos adipisci. Libero asperiores quia maiores magni. Vitae impedit expedita qui repudiandae aut quaerat ut. Maxime corrupti reiciendis sed maxime.'),
       (24, 158, 158,
        'Eligendi qui aliquam in sit laudantium iusto. Itaque facilis et assumenda. Hic voluptatibus iste quo et.'),
       (25, 160, 160,
        'Iure quasi quia sit illum qui eos. Quam iusto ea ea facere iure cumque. Recusandae saepe ipsum ullam hic consectetur hic. Impedit quos ut ut.'),
       (26, 161, 161,
        'Temporibus illum incidunt atque. Temporibus tempora velit vel cumque recusandae quos dolores. Id alias dolores qui sint nisi ut.'),
       (27, 164, 164,
        'Quaerat harum autem illo aut nulla. Velit mollitia quo aut id eaque accusamus pariatur. Aut sapiente nihil odio quaerat mollitia quia itaque. Perspiciatis maiores incidunt optio.'),
       (28, 165, 165,
        'Et consequatur sequi maiores. Corrupti harum voluptatum qui natus et fugit enim. Est quod quasi ut inventore omnis et rerum.'),
       (29, 166, 166,
        'Ullam debitis et at aut alias unde. Consectetur fugiat delectus doloremque aut. Consequatur sint culpa est atque.'),
       (30, 167, 167,
        'Omnis sequi et architecto ipsa. Dolorem et et quia animi consequatur cum dolorem. Maiores voluptates suscipit dolores quis iste. Illum sequi sapiente recusandae asperiores est iusto.'),
       (31, 170, 170,
        'Tempore consequatur at et consequatur adipisci fugiat. Omnis fugit velit numquam maxime dolorem. Voluptates laborum natus temporibus sequi modi in est.'),
       (32, 178, 178,
        'Inventore amet reiciendis qui sit rerum a. Autem non animi aspernatur eveniet. Nihil voluptatem id natus delectus excepturi sequi.'),
       (33, 179, 179,
        'Et quas aspernatur exercitationem voluptatum in pariatur nostrum. Libero minus quia quam molestiae dignissimos. Sequi accusamus sequi quis commodi doloremque ut consequuntur. Temporibus nulla occaecati reprehenderit adipisci eos eaque illum.'),
       (34, 180, 180,
        'Voluptatem eos sit sed ipsa. Dolorem qui et impedit. Vel autem modi voluptatibus vel non soluta. In maiores itaque maxime ut libero ipsam.'),
       (35, 181, 181, 'At facere assumenda et id. Quibusdam dicta voluptates sed in. Et tempora hic nemo tenetur.'),
       (36, 182, 182,
        'Modi facilis enim sit placeat. Molestias labore expedita voluptatum rerum blanditiis. Architecto nihil rerum provident ea.'),
       (37, 183, 183,
        'Quibusdam id blanditiis suscipit quae. Explicabo incidunt nulla vitae fuga. Et aut aut dolores pariatur modi.'),
       (38, 185, 185,
        'Reprehenderit in suscipit corporis quo temporibus voluptas. Id sed distinctio sint. Id dolorem eum aspernatur rerum placeat. Animi et eum suscipit sed minus aut iusto.'),
       (39, 188, 188,
        'Aut ut sit rerum illo. Magnam inventore harum reprehenderit eveniet hic et nostrum. Accusantium veniam est ducimus dolorem.'),
       (40, 189, 189,
        'Totam amet velit occaecati. Vel nihil vitae voluptates sed reprehenderit molestiae. Ab placeat ab occaecati asperiores.'),
       (41, 191, 191,
        'Odit sed assumenda quo et eius voluptatibus voluptatem. Et velit provident similique. Reiciendis excepturi pariatur et ea quam maiores amet.'),
       (42, 192, 192, 'Ut et aut sunt minus modi magnam. Vel officia voluptatem et amet dolorem modi.'),
       (43, 193, 193,
        'Accusamus aut hic et vitae veniam praesentium et. Praesentium porro iste perspiciatis temporibus. At vitae reprehenderit harum ut quod consectetur similique sequi. Mollitia ducimus et est iste non omnis reprehenderit qui.'),
       (44, 194, 194, 'Et ut ipsam debitis qui sed. Consequatur qui qui amet possimus.'),
       (45, 195, 195,
        'Cupiditate velit quos facilis laudantium quibusdam qui. Mollitia dolor id dolor quos delectus tempora sint. Mollitia quia sed deleniti et enim. Dolor sed quia minima.'),
       (46, 196, 196,
        'Consequatur accusantium est adipisci cum error. Nam atque dolorem atque dolores est voluptas. Dolorum dolorum dolorem perspiciatis autem perspiciatis. Molestiae impedit error beatae corporis enim.'),
       (47, 198, 198,
        'Aut dolor dolore dolore laborum ea laudantium. Non sit aut ut fuga. Voluptatem cumque optio id qui adipisci. Natus molestiae enim iure recusandae.'),
       (48, 200, 200, 'Quod asperiores iusto cum id. Non quae et est. Qui aut nobis ea neque porro.'),
       (49, 101, 101,
        'Iusto est amet id qui molestias ea necessitatibus. Animi neque molestiae autem et qui quo. Dicta eum itaque id voluptates tempora libero et.'),
       (50, 102, 102,
        'Rerum quod rerum qui deleniti nihil eum. Omnis itaque voluptas voluptas magnam nulla. Cumque neque et consequatur vel dolorem. Commodi consequatur distinctio voluptas quasi.'),
       (51, 103, 103,
        'Dolore magnam fuga velit est. Alias ipsum quo aliquid est sed quaerat et. Nobis voluptate eum quia repellendus voluptatem et. Dolores praesentium nulla eos.'),
       (52, 104, 104,
        'In harum id molestiae dolorem quos dolor nisi. Explicabo similique numquam fuga aut expedita optio perferendis. Iusto autem magni nostrum officiis quas eos.'),
       (53, 105, 105, 'Veniam laboriosam totam dolore assumenda recusandae quidem. Quia libero sed ex fuga.'),
       (54, 107, 107,
        'Voluptatem omnis dolorum architecto maxime voluptatem reiciendis pariatur optio. Laboriosam unde rerum eum. Aut sequi sunt sunt voluptatem mollitia. Ea quidem veniam ea ad qui atque.'),
       (55, 108, 108,
        'Accusamus velit fuga velit aliquam amet deleniti. Maxime sed omnis ut unde dolores. Illo et a fuga cupiditate aperiam.'),
       (56, 110, 110,
        'Voluptatem deleniti molestias laboriosam. Ratione et rerum sint aliquam quo qui sunt doloribus. Quia et voluptatibus ipsum.'),
       (57, 115, 115,
        'Ratione voluptas ut omnis sequi. At assumenda nobis recusandae exercitationem. Eos asperiores iusto voluptas quas.'),
       (58, 118, 118,
        'Incidunt rerum quo animi aut molestiae molestiae aspernatur. Consectetur ratione rerum quo iste. Ratione explicabo eos qui error quidem eligendi minus.'),
       (59, 119, 119,
        'Fugiat dolorum quia sunt sed laboriosam nemo. Officiis id quis perferendis iste maiores. Ex omnis optio animi eos vel sed et adipisci.'),
       (60, 121, 121,
        'Illo id aliquam perferendis et laboriosam voluptate. Voluptas sunt dolor aut. Praesentium cum nulla facilis excepturi voluptatibus nobis deserunt.'),
       (61, 123, 123,
        'Nostrum quia excepturi vitae excepturi itaque id tempore repellendus. Delectus nisi vel iusto quae nisi. Rerum exercitationem qui doloremque tempore quia dicta. Et dolore aut iste aut qui veritatis. Numquam nihil aliquam veritatis quidem consectetur excep'),
       (62, 124, 124,
        'Expedita suscipit facilis nesciunt sed et. Vero sed quia cupiditate iure ut sed. Qui voluptatum culpa natus consequatur dolorem quibusdam consectetur.'),
       (63, 127, 127,
        'Perferendis sed quo rerum voluptatem hic ducimus consequatur. Consequuntur et tenetur a assumenda. Est doloremque est fugiat aut quam asperiores amet quibusdam. Libero omnis est minima veritatis animi aut consequuntur.'),
       (64, 139, 139,
        'Omnis nisi vel error veritatis. Tempora recusandae corporis rem aut asperiores earum fuga. Quasi consectetur fuga adipisci ex. Est quis modi quae aut laboriosam reiciendis id.'),
       (65, 141, 141,
        'Quia eveniet ut assumenda aut. Sit voluptates est dolorem natus aut nihil. Esse inventore nostrum et eos amet eos odit.'),
       (66, 145, 145,
        'Alias sit ut quia minus. Provident fuga ut odio inventore. Eius voluptatem quibusdam temporibus ipsam. Voluptatem quas repudiandae cupiditate iure excepturi.'),
       (67, 147, 147,
        'Qui aut expedita harum modi consequatur. Molestiae consequuntur quos magnam. Modi eum cumque animi expedita velit et.'),
       (68, 148, 148,
        'Omnis ea sit laudantium quos officiis rerum deleniti saepe. Voluptas id voluptatibus quia facere et voluptatem excepturi. Quis dolor impedit atque sed accusamus voluptatem.'),
       (69, 150, 150, 'Voluptatem totam numquam voluptas et. Consequatur sit consequatur non ut quo dolorum.'),
       (70, 154, 154,
        'Earum qui culpa eos cumque reiciendis nobis. Provident quae ipsam cum consequatur magni quia. Quod ipsa voluptas quo laborum voluptatem culpa eos optio.'),
       (71, 157, 157,
        'Est odit quia eligendi ea aut quis. Corporis id labore architecto nulla vel et. Dolorum debitis voluptatem cumque quibusdam dignissimos. Ab recusandae corporis consequatur eos.'),
       (72, 158, 158,
        'Dolorum beatae at commodi voluptatibus voluptatem et. Harum velit aut dolor odit assumenda. Atque tempore dolorem non omnis eaque.'),
       (73, 160, 160,
        'Quia perspiciatis est excepturi rerum. Cum enim ad voluptates aut voluptates enim est. Aut et doloremque modi omnis iure. Qui ratione magni deleniti inventore.'),
       (74, 161, 161, 'Nobis omnis et sunt harum et nesciunt. Dolores aut quidem et non. Et ut sed maxime et maiores.'),
       (75, 164, 164,
        'Et consequatur temporibus nemo aut sint facilis esse. Nostrum ab cum nihil molestias. Officiis et autem error earum. Est reiciendis molestiae a laborum odit ut.'),
       (76, 165, 165,
        'Sint fugit voluptatem enim. Consequatur consectetur sed debitis in. Commodi accusamus qui dolores mollitia sed suscipit.'),
       (77, 166, 166,
        'Accusantium ducimus ut labore corporis corrupti commodi quis. Ullam consequatur earum adipisci et deserunt quod necessitatibus. Rerum sequi numquam dignissimos asperiores eos reiciendis ut. Rem nihil et qui ut maiores.'),
       (78, 167, 167,
        'Excepturi qui necessitatibus dolore totam temporibus. Non ea quo animi incidunt. Aspernatur ipsa magnam labore inventore. Quo voluptates cupiditate odio enim dolores. Nihil accusamus illum dicta.'),
       (79, 170, 170,
        'Quisquam dolor ut quia quos corrupti illo. Nam dolor ut quibusdam debitis. Rem quia quia non occaecati nam. Nihil soluta illum tempore veritatis consequatur.'),
       (80, 178, 178,
        'Dolorem similique aliquam et repellendus. Voluptate reprehenderit fugiat sed rerum ipsam ipsa odit veniam. Ut et aut quaerat qui aliquam. Nulla odio perspiciatis dolorem nemo.'),
       (81, 179, 179,
        'Tempora ut omnis est mollitia est facere ullam. Pariatur in natus odit rerum qui id eligendi. Accusamus aut optio rerum consectetur.'),
       (82, 180, 180,
        'Cupiditate ducimus et esse sint. Cum voluptate vel earum incidunt ullam voluptatem doloremque. Rerum architecto quia odit et. Aut sapiente harum qui.'),
       (83, 181, 181,
        'Sunt accusantium repellat dolor nesciunt est doloribus enim. Voluptate aperiam officia sint odit eveniet necessitatibus cum quo. Et veritatis voluptatem molestias eaque ea omnis ullam. Ut sunt laborum quam nesciunt suscipit voluptas.'),
       (84, 182, 182,
        'Vero impedit necessitatibus ab perferendis. Saepe vitae velit consequatur ipsa. Qui non aperiam ipsa aspernatur. Natus qui ipsam minus qui et id.'),
       (85, 183, 183,
        'Molestias itaque enim ea rerum voluptatibus cupiditate voluptas. Quasi numquam reiciendis aut ut eius vero at. Eligendi dolore asperiores soluta. Dolorem tenetur beatae sit atque quos et enim.'),
       (86, 185, 185,
        'Velit debitis voluptatem vitae aut unde voluptas. Amet sit eaque officiis ab autem. Corporis autem dolores omnis.'),
       (87, 188, 188,
        'Quia quia praesentium voluptate sit non rerum. Eaque architecto sed ut quia qui exercitationem fugiat dolores. Est omnis consequatur eius eum ex repellat.'),
       (88, 189, 189,
        'Incidunt ut excepturi aperiam incidunt quia. Qui cumque deserunt unde nesciunt ipsa eius ullam. Nisi expedita et quis omnis est et qui a. Aperiam aut quasi minus nihil minima.'),
       (89, 191, 191,
        'Molestiae ex aperiam autem dolore est veniam voluptatibus. Non ut saepe excepturi nesciunt amet nemo laboriosam nihil. Vel architecto sequi laudantium similique cupiditate eos.'),
       (90, 192, 192,
        'Tenetur quia harum dolorem non cumque. Quidem consectetur ipsa eaque maxime et velit. Omnis facilis consequatur error laboriosam consectetur officia explicabo. Modi deserunt quisquam laboriosam nihil explicabo.'),
       (91, 193, 193,
        'Ipsa soluta quia et perspiciatis. Ducimus fugiat est quasi distinctio voluptatem eius facilis. Cumque doloribus delectus consequuntur dolorem. Dolorum vitae sint iste omnis exercitationem cumque.'),
       (92, 194, 194,
        'Odit illum a quia et nostrum voluptas. Iure quas aliquam totam ad. Quod voluptas similique ratione qui animi suscipit. Quibusdam et minima error optio.'),
       (93, 195, 195,
        'Eius nulla eos corporis. Cum est doloribus explicabo qui. Doloribus aut voluptas corporis culpa. Qui qui dolor vitae vero quia recusandae.'),
       (94, 196, 196,
        'Repellendus quo at pariatur quidem labore. Iste illum ut iusto quo incidunt. Ut labore enim quas ea et.'),
       (95, 198, 198,
        'Dolorem voluptatum quia sit asperiores mollitia. Ut ratione dolorem quos nobis sit. Repudiandae accusantium et sequi quis est accusantium. Voluptatibus dolor modi repellendus libero delectus.'),
       (96, 200, 200,
        'Atque corrupti quasi sed odit qui. Aut natus odit quia et sed. Unde reprehenderit quis rem officia. Non blanditiis accusamus eum in praesentium.'),
       (97, 101, 101,
        'Autem architecto adipisci est nobis officia. Laborum sed natus ipsum voluptas facilis. Alias temporibus itaque rerum repudiandae. Ea sapiente error quia et autem corrupti et.'),
       (98, 102, 102,
        'Qui aperiam quos voluptate nemo similique. Distinctio consequatur et debitis dolorum velit voluptatem. Magni voluptatem commodi eaque molestias nihil. Amet ratione enim quis deserunt.'),
       (99, 103, 103,
        'Earum adipisci quis inventore deleniti reprehenderit. Sit officia nemo amet tempora tempora vel omnis. Delectus velit quia asperiores id earum. Deleniti ut laudantium veniam cum labore est quae.'),
       (100, 104, 104,
        'Quae aliquid molestiae illum ullam quis. Dolorem maiores quia sed occaecati velit sit. Enim ea fugiat rerum. Perspiciatis ab odio ut sed ipsam aut dolorem.');
/*!40000 ALTER TABLE `messages`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners_houses`
--

DROP TABLE IF EXISTS `owners_houses`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owners_houses`
(
    `user_id`  bigint(20) unsigned NOT NULL,
    `house_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`user_id`, `house_id`),
    KEY `house_id` (`house_id`),
    CONSTRAINT `owners_houses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `owners_houses_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `houses_for_rent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners_houses`
--

LOCK TABLES `owners_houses` WRITE;
/*!40000 ALTER TABLE `owners_houses`
    DISABLE KEYS */;
INSERT INTO `owners_houses`
VALUES (101, 1),
       (101, 49),
       (101, 97),
       (102, 2),
       (102, 50),
       (102, 98),
       (103, 3),
       (103, 51),
       (103, 99),
       (104, 4),
       (104, 52),
       (104, 100),
       (105, 5),
       (105, 53),
       (107, 6),
       (107, 54),
       (108, 7),
       (108, 55),
       (110, 8),
       (110, 56),
       (115, 9),
       (115, 57),
       (118, 10),
       (118, 58),
       (119, 11),
       (119, 59),
       (121, 12),
       (121, 60),
       (123, 13),
       (123, 61),
       (124, 14),
       (124, 62),
       (127, 15),
       (127, 63),
       (139, 16),
       (139, 64),
       (141, 17),
       (141, 65),
       (145, 18),
       (145, 66),
       (147, 19),
       (147, 67),
       (148, 20),
       (148, 68),
       (150, 21),
       (150, 69),
       (154, 22),
       (154, 70),
       (157, 23),
       (157, 71),
       (158, 24),
       (158, 72),
       (160, 25),
       (160, 73),
       (161, 26),
       (161, 74),
       (164, 27),
       (164, 75),
       (165, 28),
       (165, 76),
       (166, 29),
       (166, 77),
       (167, 30),
       (167, 78),
       (170, 31),
       (170, 79),
       (178, 32),
       (178, 80),
       (179, 33),
       (179, 81),
       (180, 34),
       (180, 82),
       (181, 35),
       (181, 83),
       (182, 36),
       (182, 84),
       (183, 37),
       (183, 85),
       (185, 38),
       (185, 86),
       (188, 39),
       (188, 87),
       (189, 40),
       (189, 88),
       (191, 41),
       (191, 89),
       (192, 42),
       (192, 90),
       (193, 43),
       (193, 91),
       (194, 44),
       (194, 92),
       (195, 45),
       (195, 93),
       (196, 46),
       (196, 94),
       (198, 47),
       (198, 95),
       (200, 48),
       (200, 96);
/*!40000 ALTER TABLE `owners_houses`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `from_user_id`  bigint(20) unsigned NOT NULL,
    `to_user_id`    bigint(20) unsigned NOT NULL,
    `amount`        bigint(20) unsigned NOT NULL,
    `creation_date` datetime            NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    KEY `from_user_id` (`from_user_id`),
    KEY `to_user_id` (`to_user_id`),
    CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
    CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments`
    DISABLE KEYS */;
INSERT INTO `payments`
VALUES (1, 101, 101, 958, '1974-05-20 11:46:10'),
       (2, 102, 102, 140, '2002-10-11 11:49:11'),
       (3, 103, 103, 354, '2005-03-19 10:45:36'),
       (4, 104, 104, 815, '2018-08-08 01:06:28'),
       (5, 105, 105, 108, '2001-04-04 14:28:49'),
       (6, 107, 107, 42, '1973-10-16 00:34:16'),
       (7, 108, 108, 235, '2021-01-20 10:30:48'),
       (8, 110, 110, 394, '1970-01-05 06:08:09'),
       (9, 115, 115, 94, '2001-04-21 09:09:08'),
       (10, 118, 118, 41, '2021-06-22 21:36:27'),
       (11, 119, 119, 760, '1976-12-19 20:46:02'),
       (12, 121, 121, 618, '1999-04-04 09:08:21'),
       (13, 123, 123, 521, '2007-07-18 05:00:57'),
       (14, 124, 124, 694, '1995-03-05 07:48:01'),
       (15, 127, 127, 618, '2011-09-03 09:57:15'),
       (16, 139, 139, 213, '1997-01-09 04:19:27'),
       (17, 141, 141, 921, '1980-11-01 04:04:13'),
       (18, 145, 145, 805, '1971-05-31 13:17:10'),
       (19, 147, 147, 273, '1985-01-22 04:10:23'),
       (20, 148, 148, 113, '1982-01-11 00:03:48'),
       (21, 150, 150, 829, '1976-03-26 22:33:38'),
       (22, 154, 154, 67, '2020-02-01 18:34:55'),
       (23, 157, 157, 672, '1994-03-07 22:36:12'),
       (24, 158, 158, 695, '1990-12-03 20:27:51'),
       (25, 160, 160, 370, '2017-12-19 09:49:58'),
       (26, 161, 161, 282, '2015-05-05 02:22:12'),
       (27, 164, 164, 338, '1982-10-19 18:12:48'),
       (28, 165, 165, 851, '1970-02-23 18:14:04'),
       (29, 166, 166, 113, '2006-04-12 17:02:22'),
       (30, 167, 167, 860, '1976-04-19 08:43:43'),
       (31, 170, 170, 147, '2019-10-23 14:02:46'),
       (32, 178, 178, 899, '2005-12-03 09:48:21'),
       (33, 179, 179, 459, '2013-04-08 18:32:07'),
       (34, 180, 180, 888, '1997-07-29 16:50:16'),
       (35, 181, 181, 348, '2013-09-17 05:01:14'),
       (36, 182, 182, 547, '2004-03-28 10:38:43'),
       (37, 183, 183, 603, '1973-12-13 06:52:49'),
       (38, 185, 185, 152, '2022-01-25 07:30:37'),
       (39, 188, 188, 983, '2022-01-30 23:17:54'),
       (40, 189, 189, 174, '2006-11-16 00:25:25'),
       (41, 191, 191, 25, '1978-08-17 07:09:37'),
       (42, 192, 192, 638, '1986-06-18 06:35:30'),
       (43, 193, 193, 785, '2008-11-06 06:30:45'),
       (44, 194, 194, 645, '1978-05-09 09:49:38'),
       (45, 195, 195, 168, '1980-10-26 06:49:27'),
       (46, 196, 196, 490, '1995-05-03 03:03:40'),
       (47, 198, 198, 757, '1986-11-20 16:49:26'),
       (48, 200, 200, 657, '2009-12-15 04:46:49'),
       (49, 101, 101, 360, '1976-02-26 20:25:38'),
       (50, 102, 102, 824, '2005-09-24 16:02:09'),
       (51, 103, 103, 146, '1992-04-30 13:41:38'),
       (52, 104, 104, 499, '2008-08-20 03:21:04'),
       (53, 105, 105, 354, '1992-04-01 08:09:55'),
       (54, 107, 107, 629, '1987-05-12 12:11:36'),
       (55, 108, 108, 228, '2014-03-12 23:42:49'),
       (56, 110, 110, 10, '1988-07-19 04:58:02'),
       (57, 115, 115, 789, '1987-12-05 09:17:15'),
       (58, 118, 118, 120, '1975-05-19 10:36:43'),
       (59, 119, 119, 152, '2008-08-24 16:22:10'),
       (60, 121, 121, 720, '1981-11-16 08:59:23'),
       (61, 123, 123, 126, '1992-06-12 02:45:09'),
       (62, 124, 124, 604, '2009-12-23 08:37:36'),
       (63, 127, 127, 939, '1980-01-22 01:47:06'),
       (64, 139, 139, 25, '1980-04-17 21:37:05'),
       (65, 141, 141, 198, '1990-10-14 01:46:49'),
       (66, 145, 145, 176, '1994-01-21 18:44:15'),
       (67, 147, 147, 288, '2005-04-15 00:44:12'),
       (68, 148, 148, 575, '1976-10-18 09:34:35'),
       (69, 150, 150, 560, '1975-10-23 17:21:17'),
       (70, 154, 154, 510, '2010-04-29 16:52:29'),
       (71, 157, 157, 324, '1995-01-12 05:24:57'),
       (72, 158, 158, 805, '1970-01-18 09:52:44'),
       (73, 160, 160, 483, '1990-02-07 04:38:23'),
       (74, 161, 161, 363, '1997-03-05 15:52:43'),
       (75, 164, 164, 848, '2017-08-12 10:48:58'),
       (76, 165, 165, 520, '1979-05-28 02:35:44'),
       (77, 166, 166, 95, '1986-07-05 19:40:33'),
       (78, 167, 167, 606, '2020-05-22 21:26:16'),
       (79, 170, 170, 321, '2013-03-01 04:24:48'),
       (80, 178, 178, 240, '1989-09-08 01:26:43'),
       (81, 179, 179, 330, '2014-12-10 03:35:26'),
       (82, 180, 180, 482, '1990-06-28 19:15:58'),
       (83, 181, 181, 10, '1972-03-30 13:33:54'),
       (84, 182, 182, 839, '1979-03-21 21:54:43'),
       (85, 183, 183, 730, '2012-01-21 01:45:32'),
       (86, 185, 185, 620, '1977-04-19 15:32:07'),
       (87, 188, 188, 215, '1970-09-19 21:35:52'),
       (88, 189, 189, 312, '1979-12-24 11:24:10'),
       (89, 191, 191, 709, '1970-01-11 18:02:37'),
       (90, 192, 192, 915, '1998-03-26 07:52:53'),
       (91, 193, 193, 546, '2011-04-16 15:29:47'),
       (92, 194, 194, 435, '1971-09-26 18:56:56'),
       (93, 195, 195, 440, '2009-12-27 19:22:03'),
       (94, 196, 196, 246, '2020-08-09 11:35:58'),
       (95, 198, 198, 87, '2019-12-25 12:35:47'),
       (96, 200, 200, 29, '2003-06-16 10:46:53'),
       (97, 101, 101, 217, '1979-10-17 00:45:26'),
       (98, 102, 102, 107, '1999-01-09 12:57:01'),
       (99, 103, 103, 116, '1990-12-27 01:51:15'),
       (100, 104, 104, 688, '2014-03-01 17:56:43');
/*!40000 ALTER TABLE `payments`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users`
(
    `id`           bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `first_name`   varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Имя',
    `last_name`    varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
    `email`        varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Почтовый адрес',
    `phone_number` bigint(20)                             DEFAULT NULL COMMENT 'Номер телефона',
    `balance`      bigint(20) unsigned                    DEFAULT NULL COMMENT 'Баланс',
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`),
    UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 201
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users`
    DISABLE KEYS */;
INSERT INTO `users`
VALUES (101, 'Hilario', 'Welch', 'tiara.schulist@example.com', 698, 3205),
       (102, 'Vern', 'Trantow', 'esta.boyle@example.net', 88148, 6150),
       (103, 'Kevon', 'Johnson', 'ireinger@example.org', 0, 8898),
       (104, 'Annabelle', 'Keeling', 'dwight22@example.com', 1, 6633),
       (105, 'Deangelo', 'Schuppe', 'jbechtelar@example.org', 3595865061, 3575),
       (107, 'Michaela', 'Heathcote', 'manuela.osinski@example.com', 527867, 4192),
       (108, 'Sim', 'Kautzer', 'bdenesik@example.org', 222, 6639),
       (110, 'Haley', 'Abshire', 'vicky.rath@example.com', 883616, 61),
       (115, 'Sid', 'D\'Amore', 'mackenzie69@example.org', 852, 5035),
       (118, 'Hilda', 'Koss', 'kariane97@example.net', 167, 3363),
       (119, 'Georgianna', 'Howell', 'randy21@example.org', 117, 9833),
       (121, 'Linwood', 'Roberts', 'ben05@example.com', 514, 4707),
       (123, 'Emely', 'Bode', 'aherman@example.com', 269, 1835),
       (124, 'Bernard', 'Collins', 'o\'hara.sim@example.com', 77, 3712),
       (127, 'Giovanni', 'Auer', 'curtis.nienow@example.com', 18758, 38),
       (139, 'Kasandra', 'Wisoky', 'wiley02@example.org', 754361, 1851),
       (141, 'Annie', 'Wolf', 'thompson.granville@example.org', 57, 8747),
       (145, 'Rosella', 'Jerde', 'laurence.ruecker@example.net', 744, 7922),
       (147, 'Roselyn', 'Bosco', 'carson.mraz@example.org', 7451196573, 1987),
       (148, 'Anika', 'Roob', 'fstracke@example.org', 651842, 7617),
       (150, 'Stewart', 'Lueilwitz', 'fredrick.krajcik@example.net', 927956, 5256),
       (154, 'Ivory', 'Padberg', 'vita55@example.net', 128, 856),
       (157, 'Valentin', 'Crona', 'mikayla.hudson@example.org', 70923, 415),
       (158, 'Chaz', 'Bernhard', 'dameon20@example.com', 149632, 6772),
       (160, 'Isabell', 'Hackett', 'bartoletti.loyce@example.org', 403, 3985),
       (161, 'Eulah', 'Heller', 'paris.conn@example.com', 7, 7687),
       (164, 'Taylor', 'Wolf', 'aufderhar.ayla@example.net', 743711, 8857),
       (165, 'Merlin', 'Reichel', 'ryan.earline@example.com', 194, 4541),
       (166, 'Tanner', 'Bergstrom', 'luella49@example.net', 73, 2326),
       (167, 'Damian', 'Jaskolski', 'theron.kessler@example.com', 634769, 2975),
       (170, 'Jesus', 'Shanahan', 'lakin.adelbert@example.com', 610491, 5238),
       (178, 'Donnie', 'Schaden', 'ben63@example.org', 35020, 8348),
       (179, 'Sharon', 'Keebler', 'njones@example.net', 833399, 2952),
       (180, 'Lily', 'Pacocha', 'volkman.reymundo@example.org', 168081, 5565),
       (181, 'Ova', 'Ryan', 'jschumm@example.net', 136, 2797),
       (182, 'Harry', 'Hyatt', 'kacie11@example.com', 58610, 7910),
       (183, 'Heaven', 'Mills', 'mcglynn.kenyatta@example.net', 182438, 4426),
       (185, 'Earnestine', 'Kutch', 'crist.santos@example.com', 805446599, 4870),
       (188, 'Albin', 'Zulauf', 'corrine.padberg@example.net', 3187289111, 7270),
       (189, 'Lessie', 'Gleichner', 'gerhold.burnice@example.net', 162589, 428),
       (191, 'Christian', 'Frami', 'bradley90@example.com', 799, 620),
       (192, 'Bell', 'Anderson', 'ncrooks@example.com', 72, 701),
       (193, 'Theodora', 'Wiza', 'mnolan@example.net', 357878, 751),
       (194, 'Vincent', 'Nienow', 'norwood70@example.com', 43, 903),
       (195, 'Lilla', 'Welch', 'langosh.corbin@example.org', 333, 3376),
       (196, 'Pearline', 'Maggio', 'cjaskolski@example.com', 570624, 7431),
       (198, 'Jacinthe', 'Nader', 'oschowalter@example.net', 97, 3022),
       (200, 'Brooklyn', 'Schimmel', 'jose.will@example.org', 668, 7463);
/*!40000 ALTER TABLE `users`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_avatars`
--

DROP TABLE IF EXISTS `users_avatars`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_avatars`
(
    `user_id`    bigint(20) unsigned                     NOT NULL,
    `file_name`  varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `size`       int(11)                                            DEFAULT NULL,
    `metadata`   longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
    `created_at` datetime                                           DEFAULT current_timestamp(),
    `updated_at` datetime                                           DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`user_id`),
    CONSTRAINT `users_avatars_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_avatars`
--

LOCK TABLES `users_avatars` WRITE;
/*!40000 ALTER TABLE `users_avatars`
    DISABLE KEYS */;
INSERT INTO `users_avatars`
VALUES (101, 'eum', 46, '5783', '1975-04-09 08:17:27', '2003-07-15 23:07:00'),
       (102, 'nihil', 0, '9567', '1980-01-30 23:12:21', '2020-06-26 21:19:01'),
       (103, 'recusandae', 734259527, '8548', '1980-02-28 20:38:26', '1987-04-28 02:51:29'),
       (104, 'distinctio', 1176202, '8210', '2011-12-28 13:59:31', '2008-05-19 08:59:58'),
       (105, 'necessitatibus', 894, '5122', '2001-06-24 13:27:51', '1982-01-04 03:58:01'),
       (107, 'ut', 533085105, '4019', '2002-04-07 03:57:55', '1991-12-23 02:17:58'),
       (108, 'dolores', 412, '2012', '1991-01-09 18:52:29', '2008-12-13 16:44:30'),
       (110, 'ut', 714726, '1153', '2018-10-02 19:21:59', '2001-10-06 14:13:55'),
       (115, 'vel', 6850445, '7628', '1980-09-18 23:50:06', '2020-10-16 16:39:51'),
       (118, 'quia', 49, '1353', '1983-07-05 21:39:00', '1982-12-01 09:50:28'),
       (119, 'earum', 0, '1243', '1999-07-07 23:07:57', '1976-02-20 15:52:57'),
       (121, 'tempora', 0, '6756', '1983-04-25 02:54:02', '2021-09-04 21:14:26'),
       (123, 'dolorem', 96010543, '6999', '1987-05-26 18:54:08', '1980-06-26 20:17:39'),
       (124, 'incidunt', 9, '9112', '2016-10-23 16:33:26', '2002-06-21 23:41:16'),
       (127, 'nesciunt', 6325139, '8161', '1981-09-04 23:07:15', '1994-02-10 12:49:39'),
       (139, 'illo', 6, '4652', '1979-10-15 11:22:26', '1973-03-10 15:01:13'),
       (141, 'aperiam', 102097, '2988', '1978-11-13 03:37:47', '1998-11-11 21:33:21'),
       (145, 'quibusdam', 61820752, '9419', '1989-04-18 02:53:42', '2009-08-09 21:41:56'),
       (147, 'eaque', 0, '6994', '1996-07-25 07:53:08', '2019-05-01 02:31:23'),
       (148, 'delectus', 557121, '6493', '1976-07-01 03:54:17', '1974-02-19 20:40:14'),
       (150, 'possimus', 587932985, '4383', '2001-07-25 09:39:29', '1990-11-02 06:40:57'),
       (154, 'ea', 58555332, '7549', '1983-09-14 05:49:32', '1990-06-08 11:44:04'),
       (157, 'nihil', 894021, '8495', '1971-07-09 10:02:58', '1998-07-26 04:56:19'),
       (158, 'tenetur', 66232, '7003', '1981-01-16 15:57:51', '1987-11-20 08:25:00'),
       (160, 'omnis', 5, '5439', '1993-01-23 17:47:51', '2009-08-16 05:27:25'),
       (161, 'officia', 928468799, '1252', '1985-07-22 23:57:41', '2021-09-17 07:44:41'),
       (164, 'nemo', 5, '1352', '1973-08-24 04:17:15', '1982-02-07 10:33:57'),
       (165, 'expedita', 90, '6454', '1975-02-18 06:34:23', '2000-04-22 15:18:18'),
       (166, 'dolor', 259882030, '4895', '2016-09-28 06:19:45', '1973-10-13 10:59:49'),
       (167, 'dolorum', 0, '1210', '1990-04-27 06:15:29', '1995-03-08 23:51:14'),
       (170, 'numquam', 39733, '3053', '1978-10-23 02:43:43', '2007-03-04 08:37:57'),
       (178, 'ut', 66, '6587', '2021-12-29 19:29:57', '2006-07-07 06:25:47'),
       (179, 'eveniet', 1, '7018', '1972-01-08 21:37:30', '1975-01-30 16:12:16'),
       (180, 'odio', 0, '5496', '1976-05-02 00:06:01', '1994-06-26 15:40:55'),
       (181, 'nesciunt', 686, '6536', '2006-01-21 05:25:20', '2002-09-05 00:28:36'),
       (182, 'et', 165272865, '9440', '1973-07-13 19:46:16', '2005-01-18 05:14:40'),
       (183, 'itaque', 264749132, '2820', '2000-01-01 22:42:21', '1982-01-11 01:33:42'),
       (185, 'voluptatem', 82, '9734', '2018-09-26 00:18:10', '2015-11-18 19:28:47'),
       (188, 'aut', 8568, '9433', '2000-10-04 09:37:05', '1981-11-06 05:39:23'),
       (189, 'inventore', 11775057, '2231', '2017-11-09 05:39:28', '1995-09-15 03:32:35'),
       (191, 'reiciendis', 3522031, '1512', '1971-02-16 10:35:33', '2016-07-18 14:42:42'),
       (192, 'eos', 696, '5894', '2003-06-11 23:06:26', '2009-12-17 05:59:04'),
       (193, 'alias', 325521, '7284', '2007-12-05 06:50:31', '1981-05-16 00:43:12'),
       (194, 'qui', 72100273, '8198', '1980-10-05 23:18:22', '1990-09-23 06:39:59'),
       (195, 'et', 27, '1863', '1996-05-17 02:03:00', '2014-12-09 05:54:37'),
       (196, 'eos', 8618, '5032', '1987-02-21 09:29:34', '2010-03-11 14:08:21'),
       (198, 'et', 82211, '8094', '1974-04-19 10:07:03', '2016-05-27 15:53:35'),
       (200, 'voluptate', 358142034, '2743', '2000-02-02 13:09:45', '2006-07-07 06:30:04');
/*!40000 ALTER TABLE `users_avatars`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_rating`
--

DROP TABLE IF EXISTS `users_rating`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_rating`
(
    `from_user_id` bigint(20) unsigned NOT NULL,
    `to_user_id`   bigint(20) unsigned NOT NULL,
    `rating`       enum ('0','1','2','3','4','5') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `review`       varchar(255) COLLATE utf8mb4_unicode_ci                   DEFAULT NULL,
    PRIMARY KEY (`from_user_id`, `to_user_id`),
    KEY `to_user_id` (`to_user_id`),
    CONSTRAINT `users_rating_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `users_rating_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_rating`
--

LOCK TABLES `users_rating` WRITE;
/*!40000 ALTER TABLE `users_rating`
    DISABLE KEYS */;
INSERT INTO `users_rating`
VALUES (101, 101, '1',
        'Mollitia voluptas beatae nulla eum expedita voluptatem. Similique et accusamus quia illo quia quia. Quia sint numquam et et magnam nostrum voluptatibus perferendis. Ut mollitia doloribus maxime sunt autem.'),
       (102, 102, '0',
        'Dignissimos eaque asperiores eum rerum dolores et. Autem voluptate et autem amet distinctio recusandae.'),
       (103, 103, '4',
        'Voluptas hic qui veniam nisi. Reiciendis et aut non explicabo quaerat. Reprehenderit adipisci odio itaque necessitatibus sed molestiae corrupti.'),
       (104, 104, '3',
        'Dolores qui vel maxime distinctio ipsum. Ut non soluta ipsam iste est at quaerat. Ab dolores et fugit reiciendis voluptates et. Ut quia rerum minus accusamus.'),
       (105, 105, '0',
        'Harum ut quae laborum. Esse est commodi qui odio impedit voluptas in. Sed qui laudantium quaerat qui nihil libero. Voluptas et nulla ratione sit unde et. Temporibus quia ut facilis placeat quod.'),
       (107, 107, '4',
        'Beatae ipsam impedit facilis soluta nesciunt. Ipsam qui odio maxime dolorem est et. Maiores tenetur nam et.'),
       (108, 108, '4',
        'Ipsum esse ut omnis incidunt. Aut vel ipsa voluptatibus est iste. Dignissimos laudantium officiis non.'),
       (110, 110, '2', 'Quis ipsam magnam ex non at. Omnis doloribus iusto qui veritatis eum quia soluta.'),
       (115, 115, '5',
        'Esse et dolorem vel ab magnam repudiandae laudantium expedita. Ut consequatur quos in tempore molestias rerum error.'),
       (118, 118, '5',
        'Eum laborum id nulla et et. Ipsa eligendi maxime et sit nisi sint et et. Inventore tenetur quia maiores ipsam.'),
       (119, 119, '1', 'Illum rerum dolor ab. Nam at eos ut sunt numquam. Quia quidem ab autem accusantium.'),
       (121, 121, '1',
        'Et placeat accusamus sapiente. Dolorum aperiam fugiat cupiditate commodi consequuntur cupiditate eos.'),
       (123, 123, '1',
        'Facilis odio temporibus sapiente ad voluptas placeat. Voluptas iure corrupti aut rerum pariatur ea. Enim nam voluptas maxime minus sunt libero eligendi eveniet. Distinctio deleniti ab incidunt incidunt soluta explicabo quia.'),
       (124, 124, '5',
        'Et ducimus fugit eum dignissimos. Porro voluptatem quia tempora omnis qui quo sapiente. Ut sapiente dolor porro saepe voluptatem ut non aperiam.'),
       (127, 127, '1',
        'Laboriosam soluta blanditiis cupiditate quo nihil. Et illum alias ab ad sunt. Provident et voluptate omnis est omnis.'),
       (139, 139, '0',
        'Non ab sunt voluptatem error eum reiciendis qui. Autem et quasi est illo ipsam ex aperiam consequatur. Modi autem mollitia eaque itaque id voluptatibus voluptatem nihil. Necessitatibus enim ullam est ut quia.'),
       (141, 141, '3',
        'Voluptas necessitatibus vitae qui minus rem qui reiciendis. Aperiam rerum maxime sequi est et facilis. Qui dolores sint nemo. Dignissimos est placeat quis quia. Qui est voluptas cupiditate ad rerum accusantium minus.'),
       (145, 145, '0',
        'Consectetur animi consequuntur rerum. Beatae nihil doloribus rem eos. Nostrum reiciendis quaerat atque voluptates beatae et est.'),
       (147, 147, '4',
        'Qui quidem voluptatem eaque ducimus ipsa aut. Fugiat impedit est vitae aut consequatur. Earum laudantium assumenda aut eos.'),
       (148, 148, '4',
        'Nobis ad omnis ut consequuntur nisi veniam ut est. Officia ut iusto quo amet nisi. Ut ut numquam et nam quo labore hic. Nobis impedit inventore beatae qui ut.'),
       (150, 150, '0',
        'Et dolor tenetur provident. Necessitatibus vero eveniet nihil excepturi quis saepe dolor. Eligendi neque porro ullam tenetur iusto. Non velit repellendus nesciunt ullam aut fuga officiis.'),
       (154, 154, '1',
        'Aliquam non architecto sed quod. Tempore perferendis enim iure molestias vel. Quidem voluptate officiis et.'),
       (157, 157, '5',
        'Exercitationem cupiditate id rerum alias omnis impedit aut. Officiis voluptas dolorem eum laudantium facere voluptatem totam veniam. Consequuntur facere voluptate fugit quo numquam id voluptas.'),
       (158, 158, '0',
        'Maxime rerum omnis dignissimos consequatur dolorem. Velit maiores voluptate officiis animi voluptatem animi occaecati voluptas. Culpa ex aut aliquam aut qui quia optio. Quasi est beatae veritatis nisi sed cum.'),
       (160, 160, '4',
        'Eos quam illo sunt odit veritatis. Est voluptatem voluptas ut consequatur asperiores numquam corrupti. Eos fugiat quos dolores sed laboriosam commodi sunt. Labore occaecati tempore nostrum non et architecto atque.'),
       (161, 161, '5',
        'Nemo placeat aperiam deleniti esse velit dolorum itaque. Esse quae nisi alias dignissimos qui amet ut culpa.'),
       (164, 164, '3',
        'Placeat vel iure autem voluptas expedita exercitationem. Enim ut quos eum deleniti cumque blanditiis id. Id ex cumque neque sed et qui. Quia est porro sapiente nam.'),
       (165, 165, '4',
        'Quae omnis eos sed ut aliquam odit. Et et aspernatur minima ea possimus nam. Veniam nulla quo est minima.'),
       (166, 166, '2',
        'Tempore deleniti eos ad quo nisi. Eum sit aut adipisci ipsa. Omnis illo et non dolorum. Et dolorem voluptatem est perferendis.'),
       (167, 167, '3',
        'Et aut aut recusandae non culpa aperiam aliquid. Esse provident voluptas nihil. Aut voluptatem eaque itaque eos sint est aut quae.'),
       (170, 170, '1',
        'Dolor unde placeat dolores nesciunt dolorem quia. Eos aspernatur accusamus enim ex aliquam accusamus delectus. Placeat placeat fuga recusandae deleniti tempora.'),
       (178, 178, '5',
        'Aut rerum rem adipisci distinctio ducimus sed amet. Non nihil aut cumque nobis harum quod. Fugit harum quis error perferendis.'),
       (179, 179, '2',
        'Quae est velit blanditiis magnam quisquam recusandae sed sint. Expedita ut minus dolorum doloremque quos et. Ducimus consequatur dolorem et amet esse quam.'),
       (180, 180, '3',
        'Dolorum saepe totam nihil quibusdam et. Sed dolores quis ea sunt laboriosam ut. Fuga odit doloribus ratione sed consequatur. Culpa fugit deleniti nam sapiente.'),
       (181, 181, '1',
        'Tempore dolorum porro animi saepe aut ipsa. Earum et nesciunt consequatur accusantium necessitatibus cupiditate similique dolorem. Minima sapiente laborum consequuntur. Pariatur et aut consequatur architecto sunt.'),
       (182, 182, '5',
        'Consectetur maxime autem sint amet. Ratione doloribus doloremque dolore reiciendis quo aut. Vitae sapiente et voluptatem fugit. Esse exercitationem eveniet voluptatibus sit dignissimos quae sit temporibus. Dicta ea dolorem qui deserunt quisquam illum eius'),
       (183, 183, '1',
        'Ipsum sed qui est omnis. Explicabo consequatur cum incidunt vero deserunt voluptatum. Ipsa aliquam qui quas cupiditate officiis ducimus itaque. Quis possimus dolor cum pariatur totam ut.'),
       (185, 185, '3',
        'Delectus quis necessitatibus non occaecati. Beatae repellat corrupti vel perferendis rerum nihil. Adipisci fugiat cupiditate ullam nulla. Illo tenetur sapiente magnam illo voluptatum excepturi aut.'),
       (188, 188, '0',
        'Commodi voluptas odit et qui numquam consequatur. Molestias sunt est exercitationem est sunt consectetur. Optio autem repellendus doloribus quo laborum et. Quia atque aut est sed voluptatem.'),
       (189, 189, '3',
        'At dolores dolor nihil aperiam mollitia repellendus. Rerum in commodi minus reiciendis et sit vero. Omnis laboriosam itaque sed rerum sit ab et.'),
       (191, 191, '4',
        'In ab ut omnis aut. Omnis consectetur voluptas sed sint. Harum possimus qui praesentium ea et sapiente sunt odit. Est enim adipisci voluptas error fuga veritatis molestiae.'),
       (192, 192, '2',
        'Alias voluptas veritatis aut. Ratione similique reiciendis quia aliquid qui iure. Amet rerum libero at aut impedit deserunt. Sit eum nobis qui quaerat consequatur laborum qui. Porro est et beatae.'),
       (193, 193, '5',
        'Aut cumque sint et. Provident magni necessitatibus possimus consequatur. Ut aliquid ea enim esse. Et neque laboriosam autem.'),
       (194, 194, '1',
        'Voluptatum in temporibus quae eum iste optio. Repudiandae hic ipsa laboriosam cum laudantium recusandae soluta. Inventore ut cumque quisquam doloribus recusandae. Id quos a omnis quibusdam illo et quo.'),
       (195, 195, '0',
        'Voluptatibus et magnam fuga adipisci aut qui. Aut iste consequuntur cupiditate et id sed eveniet. Quia fuga nihil tempore et deserunt nihil repellendus.'),
       (196, 196, '4',
        'Dolores est sequi nulla optio voluptas velit. Consectetur qui rerum minus. Sunt magni aspernatur dolor expedita.'),
       (198, 198, '4',
        'Ut et quibusdam et. Et eaque beatae autem dignissimos quasi. Vitae veniam placeat recusandae quia.'),
       (200, 200, '0', 'Odit similique minima autem laboriosam. Voluptates aperiam ut excepturi quia asperiores in.');
/*!40000 ALTER TABLE `users_rating`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 11:28:57
