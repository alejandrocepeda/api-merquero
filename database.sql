-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for merquero
CREATE DATABASE IF NOT EXISTS `merquero` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `merquero`;

-- Dumping structure for table merquero.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '0',
  `content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Dumping data for table merquero.files: ~0 rows (approximately)
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table merquero.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `relation_product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table merquero.groups: ~5 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `product_id`, `relation_product_id`) VALUES
	(1, 10, 5),
	(2, 10, 6),
	(3, 10, 7),
	(4, 10, 8),
	(5, 10, 9);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table merquero.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table merquero.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(13, '2018_12_19_011706_create_table_products', 2),
	(14, '2018_12_19_012316_create_table_products_status', 2),
	(17, '2018_12_19_020830_create_table_groups', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table merquero.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table merquero.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table merquero.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT '0.00',
  `cost` double(8,2) DEFAULT '0.00',
  `units` int(11) DEFAULT '0',
  `status_id` int(11) DEFAULT '1',
  `group` tinyint(4) DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table merquero.products: ~10 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `reference`, `price`, `cost`, `units`, `status_id`, `group`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Queso Tajado Finesse x 15 239 gr', 'QUE001', 8390.00, 6390.00, 10, 2, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/finessetajadox15.jpg', NULL, '2018-12-21 07:49:02'),
	(2, 'Pettite Suisse Alpinito Surtido x 12 45 g', 'PET001', 8890.00, 8000.00, 40, 2, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/alpinito-45g-x3.jpg', NULL, '2018-12-21 07:49:02'),
	(3, 'Crema de Leche Nestlac 223 gr 20 mas de Contenido 223 gr', 'CRE001', 4200.00, 3780.00, 0, 1, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/crema-leche-nestle-223g-800x800.jpg', NULL, NULL),
	(4, 'Crema Esparcible jet Frasco 350 gr', 'CRE002', 8890.00, 8000.00, 0, 2, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/crema-esparcible-jet-800x800.jpg', NULL, '2018-12-21 07:49:02'),
	(5, 'Arroz Blanco SuDespensa 500 GR.', 'ARR001', 5460.00, 4460.00, 1, 2, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/arroz-su-despensa-500g-800x800.jpg', NULL, '2018-12-21 07:49:02'),
	(6, 'Frijol Bola Roja SuDespensa 500 Gr.', 'FRI001', 5460.00, 4460.00, 2, 2, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/frijol-bola-roja-su-despensa-500g-800x800-(1).jpg', NULL, '2018-12-21 07:49:02'),
	(7, 'Lenteja SuDespensa 500 Gr.', 'LEN001', 5460.00, 4460.00, 8, 2, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/lentejas-su-despensa-1kg-800x800.jpg', NULL, '2018-12-21 07:49:02'),
	(8, 'Aceite Vegetal Claro 3 Lt.', 'ACE001', 5460.00, 4460.00, 2, 1, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/aceite-vegetal-claro-3L-800x800.jpg', NULL, NULL),
	(9, 'Sal Mi Sal 500 Gr.', 'SAL001', 5460.00, 4460.00, 1, 1, 0, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/sal-mi-sal-130g-800x800-(1).jpg', NULL, NULL),
	(10, 'Combo SuDespensa', 'COM001', 27300.00, 22300.00, 2, 1, 1, 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/combo-granos-aceite-800x800.jpg', NULL, NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table merquero.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table merquero.status: ~2 rows (approximately)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`, `name`) VALUES
	(1, 'Inactive'),
	(2, 'Active');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Dumping structure for table merquero.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table merquero.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
