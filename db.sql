-- phpMyAdmin SQL Dump
-- version 3.5.0-beta1
-- http://www.phpmyadmin.net
--
-- Хост: mysql-shared-02.phpfog.com
-- Време на генериране:  6 май 2012 в 12:21
-- Версия на сървъра: 5.5.12-log
-- Версия на PHP: 5.3.2-1ubuntu4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `dimitar_telerik_phpfogapp_com`
--

-- --------------------------------------------------------

--
-- Структура на таблица `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `views` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Ссхема на данните от таблица `categories`
--

INSERT INTO `categories` (`id`, `views`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'General Freight', 'Full truckload, FTL, less than truckload, LTL, General items delivery, retail freight', '2012-03-21 09:27:25', '2012-05-06 12:17:50'),
(2, 5, 'Palletized', 'Palletized freight, less than truckload, LTL, full truckload, FTL, retail freight', '2012-03-21 09:27:25', '2012-05-06 12:19:16'),
(3, 1, 'Refrigerated', 'Goods requiring cold storage and refrigeration during transit, Refrigerated freight, Refrigeration', '2012-03-21 09:27:25', '2012-05-06 12:19:19'),
(4, 1, 'Food and Agriculture', 'Food and produce cargo, retail, manufacturer, wine, grain, wheat, maize, rice, grapes', '2012-03-21 09:27:25', '2012-05-06 12:17:22'),
(5, 0, 'Livestock', 'Cows, sheep, goats, poultry and other livestock', '2012-03-21 09:27:25', '2012-03-21 09:27:25'),
(6, 0, 'Containers', 'Container freight, ship cargo, less than truckload, LTL, Full truckload, FTL', '2012-03-21 09:27:25', '2012-03-21 09:27:25'),
(7, 0, 'Bulk freight', 'Full truckload, bulk cargo, commodity cargo, liquid cargo, grain cargo, coal cargo, dry bulk, liquid bulk, wet bulk, dangerous liquids, non dangerous liquids, bauxite, sand, gravel, iron, cement, chemicals, fertilizer, coal, grain, wood chips, grain, dangerous chemicals, gasoline, liquified natural gas, LNG, liquified petroleum gas, LPG, petroleum', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(8, 0, 'Furniture & appliances', 'Home furniture removal, Office furniture removal, Home furniture delivery, Office furniture delivery, Appliance removal, Appliance delivery', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(9, 1, 'Liquid freight', 'Bulk cargo, Commodity cargo, Liquid cargo, Petroleum cargo, dangerous liquids, non dangerous liquids, wet bulk, liquid bulk, petroleum, gasoline, oil, liquified petroleum gas, LPG, liquified natural gas, LNG', '2012-03-21 09:27:26', '2012-05-06 12:17:27'),
(10, 0, 'Machinery', 'Machine and equipment freight, farm equipment, mining equipment, construction equipment', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(11, 0, 'Auto and motor vehicles', 'Car delivery, car removal, tractor, building equipment', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(12, 0, 'Couriers', 'Package delivery, parcel delivery, letters, official documents, sensitive document delivery', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(13, 0, 'Movers', 'House removal, office removal, moving home, moving office, moving house, home contents removal, office content removal, equipment removal, moving', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(14, 0, 'Small items', 'Letter delivery, letter courier, parcel delivery, parcel courier, package delivery, package courier, document delivery, document courier', '2012-03-21 09:27:26', '2012-03-21 09:27:26'),
(15, 0, 'Others', 'Odd load delivery, logging', '2012-03-29 00:00:00', '2012-03-29 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
