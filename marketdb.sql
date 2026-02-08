-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 08:14 PM
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
-- Database: `marketdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('c913504d-99c5-460d-b265-7b49b8864b50', 'Admin', 'ADMIN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('2292e252-101c-4304-a1f7-54c1a9135689', 'c913504d-99c5-460d-b265-7b49b8864b50');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('2292e252-101c-4304-a1f7-54c1a9135689', 'admin@gmail.com', 'ADMIN@GMAIL.COM', 'admin@gmail.com', 'ADMIN@GMAIL.COM', 1, 'AQAAAAIAAYagAAAAEKuThBUDwUhslZbO5xfK9q41L/ujLzsAlbMdaUccf2MFm765+sbd0hQNe4iZww8B7Q==', 'AIC5U4EJKOUYGIS5443XGR4NCITCPHI6', '2ade0755-44e1-418a-aaf4-e729ab16454f', NULL, 0, 0, NULL, 1, 0),
('7d6a0c11-80dc-45bb-a48b-c4fa96910281', 'ahmed@gmail.com', 'AHMED@GMAIL.COM', 'ahmed@gmail.com', 'AHMED@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEKYTd70/P2HKcDvWgk88x+ix4qhqm85H/Qrm1nxlqwAdhzjc1/SgI6O1/XqyUa2fJw==', 'NC426EXCL32QOLUY76IE5IKJYQOXUCBC', '4e13e4c1-4b8a-4170-8017-0a59bbcd6cde', NULL, 0, 0, NULL, 1, 0),
('cfaa00ac-fcb1-4a6a-832a-f79c6bf7872b', 'shahm@gmail.com', 'SHAHM@GMAIL.COM', 'shahm@gmail.com', 'SHAHM@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAENVvSsvyPNVMR/o9mv0gkT27ezQEtdYSVX53MweXayPXvcWGhMUTaSvvxOlhhMLUbA==', 'BAMI7TYUAW664MYBCLU7TILLWVVT6WBP', '5696ebdd-0fb7-44dd-a8cf-50abdc09f013', NULL, 0, 0, NULL, 1, 0),
('e0e8078a-afe6-4fb0-b145-e3727211f067', 'admin@emarket.com', 'ADMIN@EMARKET.COM', 'admin@emarket.com', 'ADMIN@EMARKET.COM', 1, 'AQAAAAIAAYagAAAAELM7eGVmh3K2oxFMp6zXw4hcfgdIChDcjiZTI/4XzsL5nN5B3DdkCnSbd4JRkSfXAw==', 'DYO5XW3GCWCEHWMRCYCW5IBBHUKQWPTB', '2ccded74-598e-468b-a917-dc455e46a38f', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductName` longtext NOT NULL,
  `Price` decimal(65,30) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`Id`, `OrderId`, `ProductName`, `Price`, `Quantity`) VALUES
(1, 1, 'iphone 16', 60.000000000000000000000000000000, 1),
(2, 1, 'iphone 16', 49.000000000000000000000000000000, 1),
(3, 2, 'Samsung Galaxy S24 ', 50000.000000000000000000000000000000, 1),
(4, 2, 'iphone 16', 69999.000000000000000000000000000000, 1),
(5, 3, 'Samsung Galaxy S25 Ultra', 97999.000000000000000000000000000000, 2),
(6, 3, 'Samsung Galaxy S24 ', 50000.000000000000000000000000000000, 1),
(7, 4, 'Iphone 16 Pro Max', 99999.000000000000000000000000000000, 1),
(8, 5, 'Samsung Galaxy S25 Ultra', 97999.000000000000000000000000000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `UserEmail` longtext NOT NULL,
  `OrderDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `UserEmail`, `OrderDate`) VALUES
(1, 'ahmed@gmail.com', '2025-05-11 13:35:53.240205'),
(2, 'ahmed@gmail.com', '2025-05-11 16:50:12.402142'),
(3, 'ahmed@gmail.com', '2025-05-15 21:03:06.373445'),
(4, 'ahmed@gmail.com', '2025-05-15 21:04:06.169152'),
(5, 'ahmed@gmail.com', '2025-05-21 11:10:27.026074');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Price` decimal(65,30) NOT NULL,
  `ImageUrl` longtext DEFAULT NULL,
  `Category` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Description`, `Price`, `ImageUrl`, `Category`) VALUES
(3, 'Samsung Galaxy S24 ', 'RAM :16GB \r\n128GB', 50000.000000000000000000000000000000, '/images/61gyimiqfGL.jpg', 'Phones'),
(4, 'AirBuds 2', '2.nesil\r\nBluetooth', 2000.000000000000000000000000000000, '/images/d9471779-c5c8-44b5-af80-508ad326571d.jpeg', 'Accessories'),
(5, 'Samsung Galaxy S25 Ultra', '256 GB｜12 GB\r\n512 GB｜12 GB\r\n1 TB｜12 GB', 97999.000000000000000000000000000000, '/images/f3557856-6d5d-442f-baba-33c8ad3ec7e6.jpeg', 'Phones'),
(6, 'Iphone 16 Pro Max', '1TB | 32GB\r\n512GB | 32GB\r\n256GB | 32GB', 99999.000000000000000000000000000000, '/images/4c17284b-8d36-4c61-ac55-c225def08c3a.png', 'Phones'),
(7, 'LG OLED TV , 77 inç OLEDB3 Serisi , webOS 23 Smart AI ThinQ , Uydu Alıcılı, Sihirli Kumanda Uyumlu, 4K HDR10 , HLG , 2023', 'Temel Özellikler\r\n\r\n6. Nesil α7 AI 4K İşlemci ile daha akıllı bir izleme deneyimi\r\nSonsuz Kontrast ile olağanüstü detaylara sahip görseller\r\nThinQ AI ve WebOS içeren Akıllı İşlevsellik\r\nDolby Atmos ve Vision ile büyüleyici bir sinema deneyimi\r\nVRR, G-sync ve Freesync ile üstün oyun deneyimi', 97999.000000000000000000000000000000, '/images/fb81f01b-f6c3-4649-9145-40c8a3f992ca.jpeg', 'TVs'),
(8, '86 inç LG QNED AI QNED80 4K Smart TV AI Sihirli Kumanda HDR10 webOS24 2024', 'Temel Özellikler\r\n\r\nQNED Color ile olağanüstü zenginlikte canlı renk paleti\r\nAlpha 5 AI Processor 4K Gen7 ile iyileştirilmiş görüntü ve ses kalitesi\r\nGelişmiş Bölgesel Karartma ile keskin ve net detaylar\r\nİç mekanınızla kusursuz uyum sağlayan Ultra İnce Tasarım\r\nwebOS Re:New Program ile 5 yıl boyunca 4 yıl güncelleme garantisi', 99999.000000000000000000000000000000, '/images/fb81f01b-f6c3-4649-9145-40c8a3f992ca.jpeg', 'TVs'),
(11, 'Neo QLED 4K QNX1D Tizen OS Smart TV (2024)', 'NQ4 AI 2. Nesil İşlemci\r\n4K’da yapay zekanın gücünü tam olarak hissedin\r\nSamsung’un yapay zeka destekli 4K işlemcisi, mümkün olan en iyi 4K deneyimlerinden birine olanak verir. 20 nöral yapay zeka ağından güç alan 4K Yapay Zeka ile Görüntü Ölçekleme teknolojimiz, içerikleri 4K’ye yakın bir görüntü kalitesine yükseltir. NQ4 AI 2. Nesil İşlemcimiz ise siz internet üzerinden OTT hizmetlerini kullanırken, en sevdiğiniz oyunları oynarken veya canlı spor müsabakaları izlerken görüntüyü 4K deneyimine optimize eder.', 43000.000000000000000000000000000000, '/images/932fe1e1-aee1-48fd-8857-68457cede7b3.jpeg', 'TVs'),
(12, '65\" QLED 4K Q70D Tizen OS Smart TV (2024)', 'Quantum Dot ile bir milyar renk tonu\r\nQuantum Dot teknolojisi şimdiye kadar sunduğumuz en iyi görüntüyü verir. %100 Renk Hacmine sahip Quantum Dot teknolojisi, ışığı tüm parlaklık seviyelerinde gerçekçiliğini koruyan nefes kesici renklere dönüştürür.', 65999.000000000000000000000000000000, '/images/97c3dcc0-9888-4602-9789-41a1d7248378.jpeg', 'TVs'),
(13, 'Lenovo Ideapad Slim 3 Intel Celeron N100 4GB 128GB SSD Windows 11 Home 15.6\" Taşınabilir Bilgisayar 82XB009HTX', 'İşlemci\r\nIntel® N100 işlemci\r\n\r\nİşletim Sistemi\r\nWindows® 11 Home Single Language, Turkish / English\r\n\r\nGrafikler\r\nDahili Intel® UHD Grafikler\r\n\r\nKamera\r\nFHD 720p, Kamera Gizlilik Kapağı\r\n\r\nHafıza\r\n4GB Soldered LPDDR5-48007\r\n\r\nDepolama\r\n128GB UFS 3.1\r\n\r\nPil\r\n47Wh', 18000.000000000000000000000000000000, '/images/63839469-78fa-4a27-8875-bf8df8797da6.jpeg', 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20250511093346_CreateProductsTable', '8.0.15'),
('20250511103204_AddOrders', '8.0.15'),
('20250511144447_AddCategoryToProduct', '8.0.15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_OrderItems_OrderId` (`OrderId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `FK_OrderItems_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
