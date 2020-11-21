-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 21-11-2020 a las 02:04:52
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
-- Base de datos: `soge`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda`
--

CREATE TABLE `ayuda` (
  `regimenfiscal` varchar(30) NOT NULL,
  `claveproductoservicio` int(11) NOT NULL,
  `claveunidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `rfc` varchar(18) NOT NULL,
  `nombre_razonsocial` varchar(35) NOT NULL,
  `usofactura` varchar(35) NOT NULL,
  `correoelectronico` varchar(50) NOT NULL,
  `calle` varchar(25) NOT NULL,
  `numero` int(11) NOT NULL,
  `colonia` varchar(40) NOT NULL,
  `ciudad` varchar(35) NOT NULL,
  `codigopostal` int(11) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contribuyentes`
--

CREATE TABLE `contribuyentes` (
  `nombre` varchar(25) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `regimenfiscal` varchar(30) NOT NULL,
  `calle` varchar(25) NOT NULL,
  `numero` int(11) NOT NULL,
  `colonia` varchar(30) NOT NULL,
  `ciudad` varchar(25) NOT NULL,
  `codigopostal` int(11) NOT NULL,
  `estado` varchar(35) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correoelectronico` varchar(50) NOT NULL,
  `estatus` varchar(20) NOT NULL,
  `homoclave` varchar(10) NOT NULL,
  `contraseña` varchar(25) NOT NULL,
  `observaciones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `declaracionesbimestrales`
--

CREATE TABLE `declaracionesbimestrales` (
  `periodo` varchar(50) NOT NULL,
  `ejercicio` varchar(50) NOT NULL,
  `tipodeclaracion` varchar(50) NOT NULL,
  `rfc_contribuyente` varchar(20) NOT NULL,
  `tiporegimen` varchar(50) NOT NULL,
  `ingresoventas` int(11) NOT NULL,
  `ingresofacturas` int(11) NOT NULL,
  `ingresofactcero` int(11) NOT NULL,
  `ingresoexentos` int(11) NOT NULL,
  `comprasgastos` int(11) NOT NULL,
  `comprasgastoscero` int(11) NOT NULL,
  `proporrcioniva` int(5) NOT NULL,
  `ivaretenido` int(5) NOT NULL,
  `ivaventapublico` int(5) NOT NULL,
  `porcentajereduccion` int(5) NOT NULL,
  `ivacobrado` int(5) NOT NULL,
  `ivaacreditable` int(5) NOT NULL,
  `ivafavor` int(5) NOT NULL,
  `ivacargo` int(5) NOT NULL,
  `ivapagar` int(5) NOT NULL,
  `actualizacion` int(20) NOT NULL,
  `recargos` int(10) NOT NULL,
  `totalcontribuciones` int(15) NOT NULL,
  `cantidadpagar` int(11) NOT NULL,
  `calcular` int(11) NOT NULL,
  `isr` int(11) NOT NULL,
  `ingresoscobrados` int(11) NOT NULL,
  `comprasgastospagados` int(11) NOT NULL,
  `participacionutilidades` int(11) NOT NULL,
  `diferenciagastosmayores` int(11) NOT NULL,
  `diferenciagastosmayoresperd` int(11) NOT NULL,
  `utilidad` int(11) NOT NULL,
  `isrdeterminado` int(11) NOT NULL,
  `porcentajereduccionisr` int(11) NOT NULL,
  `reduccionisr` int(11) NOT NULL,
  `isrretenido` int(11) NOT NULL,
  `isrpagar` int(11) NOT NULL,
  `actualizacionisr` int(11) NOT NULL,
  `recargosisr` int(11) NOT NULL,
  `totalcontribucionesisr` int(11) NOT NULL,
  `calcularisr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturasemitidas`
--

CREATE TABLE `facturasemitidas` (
  `rfc` varchar(19) NOT NULL,
  `regimenfiscal` varchar(30) NOT NULL,
  `tipofactura` varchar(35) NOT NULL,
  `cliente` varchar(40) NOT NULL,
  `usofactura` varchar(40) NOT NULL,
  `fechahora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturasrecibidas`
--

CREATE TABLE `facturasrecibidas` (
  `rfc` varchar(19) NOT NULL,
  `foliofiscal` varchar(40) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `montototal` float NOT NULL,
  `usocfdi` varchar(45) NOT NULL,
  `formapago` varchar(30) NOT NULL,
  `metodopago` varchar(25) NOT NULL,
  `estatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `nombreusuario` varchar(35) NOT NULL,
  `contraseña` varchar(15) NOT NULL,
  `departamento` varchar(40) NOT NULL,
  `fechaalta` date NOT NULL,
  `fechabaja` date NOT NULL,
  `estatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
