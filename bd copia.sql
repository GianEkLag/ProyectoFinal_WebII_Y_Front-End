-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2022 a las 15:23:55
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webservice`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residencias`
--

CREATE TABLE `residencias` (
  `idResidencia` int(11) NOT NULL,
  `nombreResidencia` text COLLATE utf8_unicode_ci NOT NULL,
  `duracionResidencia` text COLLATE utf8_unicode_ci NOT NULL,
  `lugarResidencia` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcionResidencia` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `residencias`
--

INSERT INTO `residencias` (`idResidencia`, `nombreResidencia`, `duracionResidencia`, `lugarResidencia`, `descripcionResidencia`) VALUES
(7, 'dhdhd', 'hdhdh', 'dhrhhdfefsfs', 'zr'),
(8, 'rgrg', 'rgrg', 'grgr', 'rgr'),
(9, 'fsff', 'ssbshr', 'hrhr', 'hhrhr'),
(10, 'xd actualizado', 'xd actualizado', 'xd actualizado', 'xd actualizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `numeroControl` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombreC` varchar(50) NOT NULL,
  `creditoscomple` tinyint(1) NOT NULL,
  `serviciosocial` tinyint(1) NOT NULL,
  `porcentcreditos` tinyint(1) NOT NULL,
  `idResidencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`numeroControl`, `password`, `nombreC`, `creditoscomple`, `serviciosocial`, `porcentcreditos`, `idResidencia`) VALUES
('123', '202cb962ac59075b964b07152d234b70', 'Jorge Enrique Villamil Borga', 1, 1, 1, NULL),
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrador', 1, 0, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `residencias`
--
ALTER TABLE `residencias`
  ADD PRIMARY KEY (`idResidencia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`numeroControl`),
  ADD KEY `usuarios_ibfk_1` (`idResidencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `residencias`
--
ALTER TABLE `residencias`
  MODIFY `idResidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idResidencia`) REFERENCES `residencias` (`idResidencia`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
