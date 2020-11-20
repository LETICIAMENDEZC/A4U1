-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2020 a las 21:40:55
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `infracciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multas`
--

CREATE TABLE `multas` (
  `fecha_infraccion` date NOT NULL,
  `hora` datetime NOT NULL,
  `distrito` varchar(20) NOT NULL,
  `destacamiento` varchar(20) NOT NULL,
  `lugar` varchar(25) NOT NULL,
  `estado_multa` varchar(30) NOT NULL,
  `tipo_de_violacion` varchar(280) NOT NULL,
  `nombre_oficial` varchar(50) NOT NULL,
  `firma_oficial` tinyint(1) NOT NULL,
  `num_personal` int(10) NOT NULL,
  `accion` text NOT NULL,
  `firma_conductor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `cp` int(5) NOT NULL,
  `num_licencia` varchar(25) NOT NULL,
  `sexo` text NOT NULL,
  `fechanac` date NOT NULL,
  `estatura` float NOT NULL,
  `peso` float NOT NULL,
  `color_ojos` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `num_motor` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `año` int(5) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `num_registro` int(15) NOT NULL,
  `nombre_propietario` varchar(50) NOT NULL,
  `direccion_propietario` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
