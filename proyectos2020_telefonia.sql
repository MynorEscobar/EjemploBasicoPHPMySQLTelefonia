-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2020 a las 02:15:59
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectos2020_telefonia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(11) NOT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `nombre` varchar(28) DEFAULT NULL,
  `correo_electronico` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `apellido`, `nombre`, `correo_electronico`, `direccion`) VALUES
(1, 'Abal Perez', 'Allison Adriana', 'alliabal@yahoo.com', '6ta. Calle 4-36 zona 1'),
(2, 'Acabal Pantuj', 'Amy Lisseth', 'amyacab@hotmail.com', '10ma. Calle 4-40 zona 2'),
(3, 'Acabal Poroj', 'Andrés', 'andracab@gmail.com', '8va. Calle 1-33 zona 3'),
(4, 'Aceituno Garcìa', 'Denis Eugenio', 'deniacei@msn.com', '2da. Calle 3-87 zona 4'),
(5, 'Acevedo Buitrago', 'Jairo Ramiro', 'jairacev@gmail.com', '7ma. Avenida 8-35 zona 5'),
(6, 'Adderley Espinoza', 'Karen Alexandra', 'kareadde@yahoo.es', '10ma. Calle 10-67 zona 6'),
(7, 'Agreda Castillo', 'Karen Violeta', 'kareagre@walla.com', '8va. Calle 10-75 zona 7'),
(8, 'Agreda López', 'Karla Gabriela', 'karlagreda@aol.com', '8va. Calle 11-03 zona 8'),
(9, 'Agreda Perdomo', 'Karla María', 'karlagre@yahoo.com', '1ra. Avenida 11-06 zona 9'),
(10, 'Aguilar Aldana', 'Luis Carlos', 'luisagui@hotmail.com', '8va. Calle 12-37 zona 10'),
(11, 'Inventado', 'Nuevo', 'inventado@mail.com', '1ra calle 11-25 zona 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `telefono` int(11) NOT NULL,
  `fecha_pago` tinyint(4) DEFAULT NULL,
  `meses_atraso` tinyint(4) DEFAULT NULL,
  `plan_id` smallint(6) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`telefono`, `fecha_pago`, `meses_atraso`, `plan_id`, `cliente_id`) VALUES
(41404502, 18, 0, 777, 2),
(41404703, 20, 0, 3, 3),
(41404904, 25, 1, 4, 4),
(41405105, 3, 0, 5, 5),
(41405507, 20, 0, 777, 7),
(41405708, 25, 2, 3, 8),
(41405909, 3, 0, 4, 9),
(41406110, 18, 0, 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `plan_id` smallint(6) NOT NULL,
  `plan` varchar(10) DEFAULT NULL,
  `pago_mensual` int(3) DEFAULT NULL,
  `minutos` int(3) DEFAULT NULL,
  `mensajes` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`plan_id`, `plan`, `pago_mensual`, `minutos`, `mensajes`) VALUES
(3, 'Comunicado', 250, 500, 200),
(4, 'Viajero', 125, 250, 75),
(5, 'Empresario', 300, 600, 250),
(777, 'M 300', 150, 300, 125);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`telefono`),
  ADD KEY `plan_id` (`plan_id`,`cliente_id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`plan_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD CONSTRAINT `lineas_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `planes` (`plan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lineas_ibfk_3` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
