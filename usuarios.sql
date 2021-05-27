-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2021 a las 01:34:47
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `Documento` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Sexo` tinyint(4) NOT NULL DEFAULT '0',
  `FechaNacimiento` varchar(20) DEFAULT NULL,
  `FechaRegistro` varchar(20) DEFAULT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `Documento`, `Nombre`, `Apellido`, `Sexo`, `FechaNacimiento`, `FechaRegistro`, `Correo`) VALUES
(8, 1234567894, 'Sofia Mariana', 'Caita Jimenez', 2, '2016-01-13', '2021-05-03', 'eicaita@misena.edu.co'),
(9, 58456, 'Ricardo Daniel', 'Lopez Serna', 1, '2021-05-19', '2021-05-19', 'Ricardo@gmail.com'),
(10, 145896, 'Isabel Sofia', 'Duarte Contreras', 2, '2021-05-21', '2021-05-03', 'sofiaduarte@gmail.com'),
(11, 85859696, 'Luis Hernando', 'Duarte Rivera', 1, '2021-05-20', '2021-05-03', 'duarte@gmail.com'),
(12, 8989566, 'Diana Milena', 'Suarez Rodriguez', 2, '2021-05-20', '2021-05-03', 'diana@gmail.com'),
(13, 25258585, 'Alberto Daniel', 'Olaya Rivera', 1, '2021-05-19', '2021-05-03', 'alberto@gmail.com'),
(14, 2562115, 'Sandra Viviana', 'Ruiz Piedraita', 2, '2021-05-19', '2021-05-03', 'sandra@gmail.com'),
(17, 1031825233, 'Nicolas Alba', 'Suarez Romero', 1, '2016-01-11', '2021-05-04', 'suarez@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Secundary` (`Documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
