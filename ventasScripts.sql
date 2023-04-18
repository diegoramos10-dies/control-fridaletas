-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2023 a las 07:03:09
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--
CREATE DATABASE IF NOT EXISTS `ventas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ventas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precioVenta` decimal(5,2) NOT NULL,
  `precioCompra` decimal(5,2) NOT NULL,
  `existencia` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `precioVenta`, `precioCompra`, `existencia`) VALUES
(6, 'Paleta_Limon', 'Paleta Limon', '22.00', '22.00', '46.00'),
(7, 'Paleta_Pepino', 'Paleta Pepino', '22.00', '22.00', '24.00'),
(8, 'Paleta_Melon', 'Paleta Melon', '22.00', '22.00', '50.00'),
(9, 'Paleta_Pepino_Chamoy', 'Paleta Pepino Chamoy', '25.00', '25.00', '1.00'),
(10, 'Paleta_Limon_Panditas', 'Paleta Limon Panditas', '25.00', '25.00', '43.00'),
(11, 'Paleta_Limon_Pelon_Pelorico', 'Paleta Limon Pelon Pelorico', '30.00', '30.00', '60.00'),
(12, 'Paleta_Choco_Banana', 'Paleta Choco Banana', '30.00', '30.00', '11.00'),
(13, 'Especial_Mojito_Cubano', 'Especial Mojito Cubano', '0.00', '40.00', '28.00'),
(14, 'Especial_Vino_Tinto', 'Especial Vino Tinto', '40.00', '40.00', '10.00'),
(15, 'Especial_Pulkaleta', 'Especial Pulkaleta', '40.00', '40.00', '8.00'),
(16, 'Especial_Michelada', 'Especial Michelada', '40.00', '40.00', '29.00'),
(17, 'Soda_Arandano', 'Soda_Arandano', '45.00', '45.00', '498.00'),
(18, 'Soda_Blue_Berry', 'Soda_Blue_Berry', '45.00', '45.00', '480.00'),
(19, 'Cerveza_Raiz', 'Cerveza de Raiz', '40.00', '40.00', '492.00'),
(20, 'Soda_Citricos', 'Soda Citricos', '45.00', '45.00', '500.00'),
(21, 'Soda_Frambruesa', 'Soda Frambruesa', '45.00', '45.00', '499.00'),
(22, 'Soda_Fresa', 'Soda Fresa', '45.00', '45.00', '499.00'),
(23, 'Soda_Frutos_Rojos', 'Soda Frutos Rojos', '45.00', '45.00', '495.00'),
(24, 'Soda_Black_Cherry', 'Soda Black Cherry', '45.00', '45.00', '497.00'),
(25, 'Soda_Lichi', 'Soda Lichi', '45.00', '45.00', '499.00'),
(26, 'Soda_Sandia', 'Soda Sandia', '45.00', '45.00', '500.00'),
(27, 'Soda_Limon', 'Soda Limon', '45.00', '45.00', '498.00'),
(28, 'Soda_Uva', 'Soda Uva', '45.00', '45.00', '497.00'),
(29, 'Soda_Mango', 'Soda Mango', '45.00', '45.00', '497.00'),
(30, 'Soda_Maracuya', 'Soda Maracuya', '45.00', '45.00', '497.00'),
(31, 'Soda_Blue_Berry_Zero', 'Soda Blue Berry Zero', '45.00', '45.00', '498.00'),
(32, 'Soda_Melon', 'Soda Melon', '45.00', '45.00', '500.00'),
(33, 'Soda_Naranja', 'Soda Naranja', '45.00', '45.00', '500.00'),
(34, 'Soda_Pepino', 'Soda Pepino', '45.00', '45.00', '500.00'),
(35, 'Soda_Pina', 'Soda Piña', '45.00', '45.00', '500.00'),
(36, 'Dulce_Muegano', 'Dulce Muegano', '25.00', '25.00', '13.00'),
(37, 'Dulce_Mazapan', 'Dulce Mazapan', '6.00', '6.00', '21.00'),
(38, 'Dulce_Bubaloo ', 'Dulce Bubaloo', '2.00', '2.00', '43.00'),
(39, 'Dulce_Banderilla_Tamarindo', 'Dulce Banderilla de Tamarindo', '5.00', '5.00', '15.00'),
(40, 'Dulce_Deemint', 'Dulce Chicle Deemint ', '2.00', '2.00', '28.00'),
(41, 'Dulce_Clorets', 'Dulce Chicle Clorets', '2.00', '2.00', '32.00'),
(42, 'Dulce_Tridents', 'Dulce Chicle Tridents', '4.00', '4.00', '11.00'),
(43, 'Dulce_Japoneses', 'Dulces Cacahuate Japones', '6.00', '6.00', '7.00'),
(44, 'Dulce_Alegrias', 'Dulces Alegrias', '10.00', '10.00', '5.00'),
(45, 'Dulces_Paleton', 'Dulces_Paleton', '6.00', '6.00', '3.00'),
(46, 'Dulces_Palanqueta', 'Dulces Palanqueta', '10.00', '10.00', '3.00'),
(47, 'Dulces_Cocada', 'Dulces Cocada', '10.00', '10.00', '12.00'),
(48, 'Dulces_Bombones', 'Dulces Bombones', '10.00', '10.00', '2.00'),
(49, 'Dulces_Jamoncillos', 'Dulces Jamoncillo', '10.00', '10.00', '1.00'),
(50, 'Dulce_Clorets_4', 'Dulce_Clorets 4', '4.00', '4.00', '10.00'),
(51, 'Dulce_Cacahuate', 'Dulce_Cacahuate', '20.00', '20.00', '4.00'),
(52, 'Dulces_Chicharron', 'Dulces_Chicharron', '15.00', '15.00', '0.00'),
(53, 'Dulces_Manguitos', 'Dulces_Manguitos', '10.00', '10.00', '7.00'),
(54, 'Frida_Gomas', 'Frida_Gomas', '25.00', '25.00', '15.00'),
(55, 'Soda_0', 'Soda faltante ', '0.00', '0.00', '0.00'),
(56, 'Dulce_Nucita_Confites', 'Dulce Nucita Confites', '12.00', '12.00', '10.00'),
(57, 'Dulce_Mazapan_Chico_Chocolate', 'Dulce Mazapan Chico Chocolate', '8.00', '8.00', '14.00'),
(58, 'Dulce_Nucita_Patitas', 'Dulce_Nucita_Patitas', '12.00', '12.00', '6.00'),
(59, 'Dulce_Chutazo', 'Dulce Chutazo', '8.00', '8.00', '20.00'),
(60, 'Dulce_Zumba_Rica', 'Dulce_Zumba_Rica', '10.00', '10.00', '12.00'),
(61, 'Dulce_Paleta_Mango_Chile', 'Dulce_Paleta_Mango_Chile', '4.00', '4.00', '39.00'),
(62, 'Dulce_Pachicleta', 'Dulce_Pachicleta', '5.00', '5.00', '18.00'),
(63, 'Dulce_Tutsi_Pop', 'Dulce_Tutsi_Pop', '8.00', '8.00', '20.00'),
(64, 'Dulce_Mazapan_Grande_Chocolate', 'Dulce_Mazapan_Grande_Chocolate', '15.00', '15.00', '10.00'),
(65, 'Dulce_Paleta_Payaso', 'Dulce_Paleta_Payaso', '10.00', '10.00', '13.00'),
(66, 'Paleta_Piña', 'Paleta Piña', '22.00', '22.00', '31.00'),
(67, 'Paleta_Guayaba', 'Paleta Guayaba', '22.00', '22.00', '28.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vendidos`
--

DROP TABLE IF EXISTS `productos_vendidos`;
CREATE TABLE IF NOT EXISTS `productos_vendidos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL,
  `fecha_venta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  KEY `id_venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_vendidos`
--

INSERT INTO `productos_vendidos` (`id`, `id_producto`, `cantidad`, `id_venta`, `fecha_venta`) VALUES
(16, 19, 2, 4, '2023-04-09 20:17:18'),
(17, 10, 2, 4, '2023-04-09 20:17:18'),
(18, 11, 1, 4, '2023-04-09 20:17:18'),
(19, 18, 1, 4, '2023-04-09 20:17:18'),
(20, 36, 1, 4, '2023-04-09 20:17:18'),
(21, 39, 1, 4, '2023-04-09 20:17:18'),
(22, 42, 1, 4, '2023-04-09 20:17:18'),
(23, 37, 5, 4, '2023-04-09 20:17:18'),
(24, 15, 1, 4, '2023-04-09 20:17:18'),
(25, 13, 1, 4, '2023-04-09 20:17:18'),
(26, 31, 2, 4, '2023-04-09 20:17:18'),
(27, 37, 2, 5, '2023-04-09 20:17:18'),
(28, 39, 1, 5, '2023-04-09 20:17:18'),
(29, 41, 5, 5, '2023-04-09 20:17:18'),
(30, 37, 4, 6, '2023-04-10 20:17:18'),
(31, 49, 4, 6, '2023-04-10 20:17:18'),
(32, 39, 1, 6, '2023-04-10 20:17:18'),
(33, 30, 2, 6, '2023-04-10 20:17:18'),
(34, 18, 1, 6, '2023-04-10 20:17:18'),
(35, 29, 1, 6, '2023-04-10 20:17:18'),
(36, 28, 1, 6, '2023-04-10 20:17:18'),
(37, 51, 1, 6, '2023-04-10 20:17:18'),
(38, 10, 2, 6, '2023-04-10 20:17:18'),
(39, 9, 1, 6, '2023-04-10 20:17:18'),
(40, 36, 2, 6, '2023-04-10 20:17:18'),
(41, 41, 2, 6, '2023-04-10 20:17:18'),
(42, 49, 1, 7, '2023-04-11 20:40:35'),
(43, 14, 1, 7, '2023-04-11 20:40:35'),
(44, 41, 1, 7, '2023-04-11 20:40:35'),
(45, 9, 1, 7, '2023-04-11 20:40:35'),
(46, 52, 2, 8, '2023-04-11 20:46:32'),
(47, 53, 1, 8, '2023-04-11 20:46:32'),
(48, 9, 1, 8, '2023-04-11 20:46:32'),
(49, 40, 1, 8, '2023-04-11 20:46:32'),
(50, 18, 3, 8, '2023-04-11 20:46:32'),
(51, 37, 3, 8, '2023-04-11 20:46:32'),
(52, 41, 1, 8, '2023-04-11 20:46:32'),
(53, 37, 1, 9, '2023-04-11 20:57:16'),
(54, 55, 1, 10, '2023-04-13 23:39:34'),
(55, 55, 6, 11, '2023-04-13 23:40:44'),
(56, 55, 5, 12, '2023-04-13 23:42:25'),
(57, 18, 2, 13, '2023-04-14 21:07:21'),
(58, 23, 1, 13, '2023-04-14 21:07:21'),
(59, 51, 1, 13, '2023-04-14 21:07:21'),
(60, 27, 1, 13, '2023-04-14 21:07:21'),
(61, 52, 3, 13, '2023-04-14 21:07:21'),
(62, 37, 3, 13, '2023-04-14 21:07:21'),
(63, 39, 2, 13, '2023-04-14 21:07:21'),
(64, 9, 3, 13, '2023-04-14 21:07:21'),
(65, 42, 1, 13, '2023-04-14 21:07:21'),
(66, 40, 3, 13, '2023-04-14 21:07:21'),
(67, 43, 2, 13, '2023-04-14 21:07:21'),
(68, 45, 1, 13, '2023-04-14 21:07:21'),
(69, 11, 1, 13, '2023-04-14 21:07:21'),
(70, 51, 1, 14, '2023-04-14 21:17:33'),
(71, 39, 3, 14, '2023-04-14 21:17:33'),
(72, 24, 2, 14, '2023-04-14 21:17:33'),
(73, 23, 1, 14, '2023-04-14 21:17:33'),
(74, 21, 1, 14, '2023-04-14 21:17:33'),
(75, 42, 4, 14, '2023-04-14 21:17:33'),
(76, 18, 6, 14, '2023-04-14 21:17:33'),
(77, 6, 1, 14, '2023-04-14 21:17:33'),
(78, 14, 2, 14, '2023-04-14 21:17:33'),
(79, 13, 1, 14, '2023-04-14 21:17:33'),
(80, 49, 2, 14, '2023-04-14 21:17:33'),
(81, 53, 2, 14, '2023-04-14 21:17:33'),
(82, 29, 1, 14, '2023-04-14 21:17:33'),
(83, 8, 1, 14, '2023-04-14 21:17:33'),
(84, 12, 1, 14, '2023-04-14 21:17:33'),
(85, 19, 1, 14, '2023-04-14 21:17:33'),
(86, 30, 1, 15, '2023-04-14 21:32:19'),
(87, 13, 4, 15, '2023-04-14 21:32:19'),
(88, 9, 4, 15, '2023-04-14 21:32:19'),
(89, 11, 5, 15, '2023-04-14 21:32:19'),
(90, 39, 2, 15, '2023-04-14 21:32:19'),
(91, 12, 2, 15, '2023-04-14 21:32:19'),
(92, 6, 6, 15, '2023-04-14 21:32:19'),
(93, 54, 1, 15, '2023-04-14 21:32:19'),
(94, 8, 1, 15, '2023-04-14 21:32:19'),
(95, 10, 3, 15, '2023-04-14 21:32:19'),
(96, 52, 2, 15, '2023-04-14 21:32:19'),
(97, 51, 1, 15, '2023-04-14 21:32:19'),
(98, 14, 2, 15, '2023-04-14 21:32:19'),
(99, 18, 5, 15, '2023-04-14 21:32:19'),
(100, 23, 2, 15, '2023-04-14 21:32:19'),
(101, 19, 3, 15, '2023-04-14 21:32:19'),
(102, 29, 1, 15, '2023-04-14 21:32:19'),
(103, 28, 2, 15, '2023-04-14 21:32:19'),
(104, 12, 1, 16, '2023-04-15 00:19:54'),
(105, 10, 1, 16, '2023-04-15 00:19:54'),
(106, 15, 1, 16, '2023-04-15 00:19:54'),
(107, 44, 2, 16, '2023-04-15 00:19:54'),
(108, 49, 1, 16, '2023-04-15 00:19:54'),
(109, 47, 1, 16, '2023-04-15 00:19:54'),
(110, 42, 1, 16, '2023-04-15 00:19:54'),
(111, 14, 2, 17, '2023-04-15 00:32:47'),
(112, 13, 1, 18, '2023-04-15 00:34:12'),
(113, 11, 1, 19, '2023-04-16 22:16:56'),
(114, 10, 4, 19, '2023-04-16 22:16:56'),
(115, 62, 2, 19, '2023-04-16 22:16:56'),
(116, 9, 2, 19, '2023-04-16 22:16:56'),
(117, 14, 1, 19, '2023-04-16 22:16:56'),
(118, 27, 1, 19, '2023-04-16 22:16:56'),
(119, 37, 9, 19, '2023-04-16 22:16:56'),
(120, 56, 2, 19, '2023-04-16 22:16:56'),
(121, 12, 3, 19, '2023-04-16 22:16:56'),
(122, 48, 1, 19, '2023-04-16 22:16:56'),
(123, 38, 5, 19, '2023-04-16 22:16:56'),
(124, 8, 2, 19, '2023-04-16 22:16:56'),
(125, 18, 2, 19, '2023-04-16 22:16:56'),
(126, 47, 2, 19, '2023-04-16 22:16:56'),
(127, 41, 7, 19, '2023-04-16 22:16:56'),
(128, 23, 1, 19, '2023-04-16 22:16:56'),
(129, 51, 2, 19, '2023-04-16 22:16:56'),
(130, 63, 2, 19, '2023-04-16 22:16:56'),
(131, 40, 2, 19, '2023-04-16 22:16:56'),
(132, 22, 1, 19, '2023-04-16 22:16:56'),
(133, 61, 1, 19, '2023-04-16 22:16:56'),
(134, 17, 2, 19, '2023-04-16 22:16:56'),
(135, 44, 2, 19, '2023-04-16 22:16:56'),
(136, 64, 2, 19, '2023-04-16 22:16:56'),
(137, 49, 1, 19, '2023-04-16 22:16:56'),
(138, 57, 2, 19, '2023-04-16 22:16:56'),
(139, 6, 2, 19, '2023-04-16 22:16:56'),
(140, 53, 1, 19, '2023-04-16 22:16:56'),
(141, 65, 2, 19, '2023-04-16 22:16:56'),
(142, 58, 2, 19, '2023-04-16 22:16:56'),
(143, 43, 1, 19, '2023-04-16 22:16:56'),
(144, 36, 1, 19, '2023-04-16 22:16:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `total`) VALUES
(4, '2023-04-09 20:17:18', '439.00'),
(5, '2023-04-09 20:17:18', '27.00'),
(6, '2023-04-10 20:17:18', '443.00'),
(7, '2023-04-11 20:40:35', '77.00'),
(8, '2023-04-11 20:46:32', '222.00'),
(9, '2023-04-11 20:57:16', '6.00'),
(10, '2023-04-13 23:39:34', '0.00'),
(11, '2023-04-13 23:40:44', '0.00'),
(12, '2023-04-13 23:42:25', '0.00'),
(13, '2023-04-12 21:07:21', '406.00'),
(14, '2023-04-13 21:17:33', '820.00'),
(15, '2023-04-14 21:32:19', '1479.00'),
(16, '2023-04-15 00:19:54', '139.00'),
(17, '2023-04-15 00:32:46', '0.00'),
(18, '2023-04-15 00:34:12', '0.00'),
(19, '2023-04-16 22:16:56', '1080.00');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD CONSTRAINT `productos_vendidos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_vendidos_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
