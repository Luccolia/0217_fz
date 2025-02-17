-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 17. 11:30
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `raktarkezelo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `beszallitok`
--

CREATE TABLE `beszallitok` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `beszallitok`
--

INSERT INTO `beszallitok` (`id`, `name`, `email`, `phoneNumber`, `address`) VALUES
(1, 'Monique Dumphry', 'mdumphry0@princeton.edu', '253-641-9694', '641 Macpherson Way'),
(2, 'Tessie Wallach', 'twallach1@oakley.com', '902-240-8249', '07 Harper Place'),
(3, 'Dorella Sparshutt', 'dsparshutt2@studiopress.com', '584-489-2804', '28 Buena Vista Street'),
(4, 'Igor Sprigings', 'isprigings3@opera.com', '812-560-1218', '655 Ohio Street'),
(5, 'Yule Ansett', 'yansett4@scientificamerican.com', '136-355-6617', '31 Lakewood Drive'),
(6, 'Zorina Joyner', 'zjoyner5@house.gov', '856-697-1847', '21 Westerfield Parkway'),
(7, 'Marcelline Tansly', 'mtansly6@oakley.com', '738-162-7686', '5500 Grayhawk Parkway'),
(8, 'Elisha Ditt', 'editt7@diigo.com', '558-890-5689', '054 Dahle Parkway'),
(9, 'Bancroft Splevins', 'bsplevins8@craigslist.org', '428-562-0089', '106 Lakewood Pass'),
(10, 'Martino MacLaig', 'mmaclaig9@typepad.com', '183-935-8670', '3 Comanche Circle'),
(11, 'Adelle Newns', 'anewnsa@timesonline.co.uk', '481-764-2271', '681 Dwight Alley'),
(12, 'Heidi Poinsett', 'hpoinsettb@wix.com', '934-872-4633', '747 Little Fleur Circle'),
(13, 'Kylie Tambling', 'ktamblingc@blog.com', '899-231-1000', '47079 Melby Hill'),
(14, 'Francklin Askham', 'faskhamd@youtu.be', '357-651-3682', '050 Merchant Crossing'),
(15, 'Nannette Topley', 'ntopleye@umich.edu', '429-539-1126', '03006 Wayridge Center'),
(16, 'Shelton Langley', 'slangleyf@gnu.org', '296-713-4700', '0 Amoth Crossing'),
(17, 'Jeana Kerfod', 'jkerfodg@ameblo.jp', '112-411-3925', '7161 West Way'),
(18, 'Sukey Fishbourn', 'sfishbournh@skype.com', '943-410-8543', '7551 Banding Center'),
(19, 'Alverta Pollicatt', 'apollicatti@networkadvertising.org', '258-221-8944', '5787 Lake View Road'),
(20, 'Gardiner Overlow', 'goverlowj@fastcompany.com', '402-555-3758', '8 Anthes Plaza'),
(21, 'Nonna Wigmore', 'nwigmorek@behance.net', '915-487-5181', '8618 Rutledge Junction'),
(22, 'Christopher Souster', 'csousterl@w3.org', '351-117-7513', '1695 Moulton Point'),
(23, 'Ursuline Grundle', 'ugrundlem@nifty.com', '631-480-7566', '168 Loeprich Park'),
(24, 'Nikaniki Heggman', 'nheggmann@geocities.com', '950-280-6469', '6192 Mccormick Road'),
(25, 'Britte Phizaclea', 'bphizacleao@arstechnica.com', '514-239-6281', '83 Troy Circle');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `name`, `description`, `price`, `supplier`, `supplierId`, `stock`) VALUES
(1, 'Ford', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 968.87, 'Marybeth Jakeway', 1, 705),
(2, 'Volvo', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 956.60, 'Kristel Nertney', 2, 33),
(3, 'Hyundai', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 824.12, 'Clayton Caughey', 3, 681),
(4, 'Oldsmobile', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 598.26, 'Dyanne Etter', 4, 35),
(5, 'Toyota', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 694.44, 'Fredrika Sabati', 5, 363),
(6, 'BMW', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 956.47, 'Norene Bearns', 6, 448),
(7, 'Porsche', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 687.77, 'Sharla Wike', 7, 583),
(8, 'Honda', 'In blandit ultrices enim.', 461.79, 'Nadeen O\'Clery', 8, 121),
(9, 'Ford', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 747.72, 'Sinclair Iacovides', 9, 475),
(10, 'Toyota', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 536.52, 'Philippine Casley', 10, 204),
(11, 'Holden', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 305.62, 'Frederich Giacobini', 11, 985),
(12, 'Lincoln', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 603.34, 'Grissel Chasle', 12, 218),
(13, 'Chevrolet', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 433.92, 'Dacey Bohman', 13, 274),
(14, 'Dodge', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 976.97, 'Robinet Doe', 14, 93),
(15, 'GMC', 'Proin eu mi. Nulla ac enim.', 412.87, 'Giacobo Kingswell', 15, 507),
(16, 'Toyota', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 593.74, 'Gilles Copcote', 16, 224),
(17, 'Mercury', 'Praesent blandit.', 352.16, 'Sibyl McManus', 17, 751),
(18, 'Saturn', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 378.55, 'Enoch Paggitt', 18, 265),
(19, 'Mitsubishi', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 550.10, 'Corney O\' Dornan', 19, 292),
(20, 'Dodge', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 771.83, 'Etheline Pusill', 20, 451),
(21, 'Eagle', 'Sed ante.', 547.31, 'Janeen Froggatt', 21, 8),
(22, 'Spyker', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 500.00, 'Ester Fawdry', 22, 340),
(23, 'Fairthorpe', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 880.43, 'Flint Rablin', 23, 577),
(24, 'Infiniti', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 877.24, 'Blair Gostling', 24, 737),
(25, 'BMW', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 733.56, 'Livia Finney', 25, 768);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `beszallitok`
--
ALTER TABLE `beszallitok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplierId` (`supplierId`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `termekek`
--
ALTER TABLE `termekek`
  ADD CONSTRAINT `termekek_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `beszallitok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
