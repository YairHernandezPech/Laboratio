-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 06-02-2024 a las 02:13:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ddlap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `pc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `estado`, `pc_id`) VALUES
(1, 'Asiento Disponible', 1),
(2, 'Asiento Disponible', 2),
(3, 'Disponible', 3),
(4, 'Disponible', 4),
(5, 'Disponible', 5),
(6, 'Disponible', 6),
(7, 'Disponible', 7),
(8, 'Disponible', 8),
(9, 'Disponible', 9),
(10, 'Disponible', 10),
(11, 'Disponible', 11),
(12, 'Disponible', 12),
(13, 'Disponible', 13),
(14, 'Disponible', 14),
(15, 'Disponible', 15),
(16, 'Disponible', 16),
(17, 'Disponible', 17),
(18, 'Disponible', 18),
(19, 'Disponible', 19),
(20, 'Disponible', 20),
(21, 'Disponible', 21),
(22, 'Disponible', 22),
(23, 'Disponible', 23),
(24, 'Disponible', 24),
(25, 'Disponible', 25),
(26, 'Disponible', 26),
(27, 'Disponible', 27),
(28, 'Disponible', 28),
(29, 'Disponible', 29),
(30, 'Disponible', 30),
(31, 'Disponible', 31),
(32, 'Disponible', 32),
(33, 'Disponible', 33),
(34, 'Disponible', 34),
(35, 'Disponible', 35),
(36, 'Disponible', 36),
(37, 'Disponible', 37),
(38, 'Disponible', 38),
(39, 'Disponible', 39),
(40, 'Disponible', 40),
(41, 'Disponible', 41),
(42, 'Disponible', 42),
(43, 'Disponible', 43),
(44, 'Disponible', 44),
(45, 'Disponible', 45),
(46, 'Disponible', 46),
(47, 'Disponible', 47),
(48, 'Disponible', 48),
(49, 'Disponible', 49),
(50, 'Disponible', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pc`
--

CREATE TABLE `pc` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `nserie` varchar(255) NOT NULL,
  `teclado` tinyint(1) NOT NULL,
  `mouse` tinyint(1) NOT NULL,
  `observacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pc`
--

INSERT INTO `pc` (`id`, `nombre`, `modelo`, `nserie`, `teclado`, `mouse`, `observacion`) VALUES
(0, '', '', '', 0, 0, ''),
(1, 'ASUS VIVOBOOK', 'Laptop', '19W244434A', 0, 1, 'Esta maquina no cuenta con internet'),
(2, 'Mac', 'Laptop', '19W244434A', 0, 1, 'No tiene office'),
(3, 'Dell Inspiron 15', 'Laptop', 'NS1001', 0, 1, 'No tiene Office'),
(4, 'HP Pavilion x360', 'Laptop', 'NS1002', 1, 0, 'Sin conexión a internet'),
(5, 'Lenovo ThinkPad X1 Carbon', 'Laptop', 'NS1003', 1, 1, 'Batería agotada'),
(6, 'Acer Aspire 5', 'Laptop', 'NS1004', 0, 0, 'Pantalla rota'),
(7, 'Asus ROG Strix G15', 'PC Gamer', 'NS1005', 1, 1, 'Sin sonido'),
(8, 'Apple Macbook Air', 'Laptop', 'NS1006', 0, 0, 'Sin cámara'),
(9, 'CyberPowerPC Gamer Xtreme VR Gaming PC', 'PC Gamer', 'NS1007', 1, 1, 'Sin cargador'),
(10, 'Dell OptiPlex 7070', 'PC', 'NS1008', 0, 0, 'Sin sistema operativo'),
(11, 'MSI GE75 Raider', 'Laptop', 'NS1009', 1, 1, 'Sin antivirus'),
(12, 'Lenovo IdeaCentre 5', 'PC', 'NS1010', 0, 0, 'Sin acceso a red'),
(13, 'Alienware m15', 'Laptop', 'NS1011', 1, 1, 'No enciende'),
(14, 'Intel NUC Mini PC', 'Mini PC', 'NS1012', 0, 0, 'Sin puertos USB'),
(15, 'SkyTech Blaze II Gaming PC', 'PC Gamer', 'NS1013', 1, 1, 'No reconoce el disco duro'),
(16, 'HP EliteDesk 800 G5', 'PC', 'NS1014', 0, 0, 'Sin lector de tarjetas SD'),
(17, 'Lenovo Legion Y540', 'Laptop', 'NS1015', 1, 1, 'Teclado dañado'),
(18, 'Corsair One i160', 'PC', 'NS1016', 0, 0, 'Sin Bluetooth'),
(19, 'SkyTech Archangel Gaming PC', 'PC Gamer', 'NS1017', 1, 1, 'Sin lector de DVD'),
(20, 'Dell Precision 3630', 'PC', 'NS1018', 0, 0, 'Sin micrófono'),
(21, 'Microsoft Surface Laptop 4', 'Laptop', 'NS1019', 1, 1, 'Sin cámara web'),
(22, 'Razer Blade 15', 'Laptop', 'NS1020', 0, 0, 'Sin lector de huellas'),
(23, 'Acer Predator Helios 300', 'Laptop', 'NS1021', 1, 1, 'Pantalla de alta frecuencia de actualización'),
(24, 'HP Omen 30L', 'PC Gamer', 'NS1022', 0, 0, 'Iluminación RGB personalizable'),
(25, 'Dell Latitude 14', 'Laptop', 'NS1023', 1, 1, 'Autenticación por huella dactilar'),
(26, 'Lenovo Legion T5', 'PC', 'NS1024', 0, 0, 'Rendimiento de juego inmersivo'),
(27, 'Asus ZenBook 14', 'Laptop', 'NS1025', 1, 1, 'Diseño ultradelgado'),
(28, 'CyberPowerPC Gamer Xtreme VR Gaming PC', 'PC Gamer', 'NS1026', 0, 0, 'Conexión rápida a Internet'),
(29, 'Microsoft Surface Book 3', 'Laptop', 'NS1027', 1, 1, 'Modo tablet desmontable'),
(30, 'HP Pavilion Gaming Desktop', 'PC Gamer', 'NS1028', 0, 0, 'Amplia capacidad de almacenamiento'),
(31, 'Lenovo ThinkPad E14', 'Laptop', 'NS1029', 1, 1, 'Seguridad empresarial integrada'),
(32, 'Alienware Aurora R10', 'PC Gamer', 'NS1030', 0, 0, 'Potente rendimiento de juego'),
(33, 'Samsung Galaxy Book Flex', 'Laptop', 'NS1031', 1, 1, 'Pantalla QLED táctil'),
(34, 'SkyTech Blaze II Gaming PC', 'PC Gamer', 'NS1032', 0, 0, 'Diseño atractivo para juegos'),
(35, 'Dell Precision 5750', 'Laptop', 'NS1033', 1, 1, 'Pantalla InfinityEdge 4K'),
(36, 'CyberPowerPC Gamer Supreme Liquid Cool Gaming PC', 'PC Gamer', 'NS1034', 0, 0, 'Sistema de enfriamiento líquido'),
(37, 'Lenovo ThinkPad L14', 'Laptop', 'NS1035', 1, 1, 'Durabilidad empresarial'),
(38, 'HP Pavilion Desktop', 'PC', 'NS1036', 0, 0, 'Diseño elegante y compacto'),
(39, 'Asus ROG Zephyrus G14', 'Laptop', 'NS1037', 1, 1, 'Potente rendimiento en juegos'),
(40, 'SkyTech Archangel Gaming PC', 'PC Gamer', 'NS1038', 0, 0, 'Iluminación LED RGB'),
(41, 'Acer Aspire TC', 'PC', 'NS1039', 1, 1, 'Rendimiento multitarea eficiente'),
(42, 'Microsoft Surface Pro 7', 'Tablet', 'NS1040', 0, 0, 'Portátil y versátil'),
(43, 'Dell XPS 13', 'Laptop', 'NS1041', 1, 1, 'Pantalla InfinityEdge'),
(44, 'CyberPowerPC Gamer Xtreme VR Gaming PC', 'PC Gamer', 'NS1042', 0, 0, 'Retroiluminación LED personalizable'),
(45, 'Lenovo Legion 5', 'Laptop', 'NS1043', 1, 1, 'Rendimiento de juego potente'),
(46, 'HP Pavilion Gaming Laptop', 'Laptop', 'NS1044', 0, 0, 'Audio B&O con altavoces duales'),
(47, 'SkyTech Chronos Gaming PC', 'PC Gamer', 'NS1045', 1, 1, 'Tarjeta gráfica dedicada'),
(48, 'Acer Predator Orion 3000', 'PC Gamer', 'NS1046', 0, 0, 'Sistema de refrigeración avanzado'),
(49, 'Asus VivoBook 15', 'Laptop', 'NS1047', 1, 1, 'Diseño delgado y ligero'),
(50, 'Dell G5 Gaming Desktop', 'PC Gamer', 'NS1048', 0, 0, 'Ampliable y fácil de actualizar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pc_id` (`pc_id`);

--
-- Indices de la tabla `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`pc_id`) REFERENCES `pc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
