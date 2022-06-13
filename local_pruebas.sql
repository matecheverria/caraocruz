-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2022 a las 06:30:03
-- Versión del servidor: 8.0.29
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `local_pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletas`
--

CREATE TABLE `boletas` (
  `idboleta` int NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `Monto` int NOT NULL,
  `fecha_rendicion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `boletas`
--

INSERT INTO `boletas` (`idboleta`, `tipo`, `Monto`, `fecha_rendicion`) VALUES
(1, 'EFECTIVO', 400, '07/06/2022'),
(2, 'DEBITO', 2000, '07/06/2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cigarros`
--

CREATE TABLE `cigarros` (
  `Cod_Cigarro` varchar(30) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Presentacion` int NOT NULL,
  `Valor_Efe` int NOT NULL,
  `Valor_Deb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cigarros`
--

INSERT INTO `cigarros` (`Cod_Cigarro`, `Nombre`, `Presentacion`, `Valor_Efe`, `Valor_Deb`) VALUES
('BK10', 'BELMONT KENT', 10, 2200, 2500),
('BK20', 'BELMONT KENT ', 20, 4000, 4300),
('BKC20', 'BELMONT KENT CLICK', 20, 4400, 4700),
('DA20', 'DUNHILL AZUL', 20, 4500, 4800),
('DB20', 'DUNHILL BLANCO', 20, 4500, 4800),
('KB20', 'KENT BLUE', 20, 4400, 4700),
('KBC20', 'KENT BOOST CLICK', 20, 4800, 5100),
('KC20', 'KENT CLICK', 20, 4800, 5100),
('KI20', 'KENT IKON', 20, 4000, 4300),
('KR20', 'KENT ROSE', 20, 4000, 4300),
('KS10', 'KENT SILVER', 10, 2500, 2800),
('KS20', 'KENT SILVER', 20, 4400, 4700),
('KT20', 'KENT TROPIC', 20, 4000, 4300),
('KW20', 'KENT WHITE', 20, 4400, 4700),
('LAT20', 'LUCKY AZUL PETERSON', 20, 3200, 3500),
('LC20', 'LUCKY CHARGE', 20, 4800, 5100),
('LRT20', 'LUCKY ROJO PETERSON', 20, 3200, 3500),
('LSA10', 'LUCKY STRIKE AZUL', 10, 2500, 2800),
('LSA20', 'LUCKY STRIKE AZUL', 20, 4500, 4800),
('LSC10', 'LUCKY STRIKE CLICK', 10, 2600, 2900),
('LSC20', 'LUCKY STRIKE CLICK', 20, 4800, 5100),
('LSM10', 'LUCKY STRIKE MORADO', 10, 2700, 3000),
('LSM20', 'LUCKY STRIKE MORADO', 20, 4800, 5100),
('LSR20', 'LUCKY STRIKE ROJO', 20, 4500, 4800),
('MG20', 'MARLBORO GOLD', 20, 4200, 4500),
('MR20', 'MARLBORO ROJO', 20, 4200, 4500),
('PHMA20', 'PHILIPS MORRIS AZUL', 20, 3000, 3300),
('PHMB20', 'PHILIPS MORRIS BLANCO', 20, 3000, 3300),
('PMA10', 'PALL MALL AZUL', 10, 2200, 2500),
('PMA20', 'PALL MALL AZUL\r\n', 20, 3400, 3700),
('PMAB20', 'PALL MALL AZUL BLANDO', 20, 3300, 3600),
('PMC10', 'PALL MALL CLICK', 10, 2300, 2600),
('PMC20', 'PALL MALL CLICK', 20, 3800, 4100),
('PMG10', 'PALL MALL GRIS', 10, 2200, 2500),
('PMG20', 'PALL MALL GRIS', 20, 3400, 3700),
('PMR10', 'PALL MALL ROJO', 10, 2200, 2500),
('PMR20', 'PALL MALL ROJO', 20, 3400, 3700),
('PMRB20', 'PALL MALL ROJO BLANDO', 20, 3300, 3600),
('PMRO20', 'PALL MALL ROSADO', 20, 3800, 4100),
('PMV10', 'PALL MALL VERDE', 10, 2300, 2600),
('PMV20', 'PALL MALL VERDE', 20, 3800, 4100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_cigarros`
--

CREATE TABLE `ingreso_cigarros` (
  `id_ingreso` int NOT NULL,
  `fecha_recepcion` varchar(50) NOT NULL,
  `Cod_Cigarro` varchar(100) NOT NULL,
  `cantidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ingreso_cigarros`
--

INSERT INTO `ingreso_cigarros` (`id_ingreso`, `fecha_recepcion`, `Cod_Cigarro`, `cantidad`) VALUES
(43, '06-08-2022', 'BK10', 0),
(44, '06-08-2022', 'BK20', 0),
(45, '06-08-2022', 'BKC20', 0),
(46, '06-08-2022', 'DA20', 6),
(47, '06-08-2022', 'DB20', 5),
(48, '06-08-2022', 'KB20', 3),
(49, '06-08-2022', 'KBC20', 0),
(50, '06-08-2022', 'KC20', 1),
(51, '06-08-2022', 'KI20', 6),
(52, '06-08-2022', 'KR20', 6),
(53, '06-08-2022', 'KS10', 6),
(54, '06-08-2022', 'KS20', 0),
(55, '06-08-2022', 'KT20', 5),
(56, '06-08-2022', 'KW20', 1),
(57, '06-08-2022', 'LAT20', 0),
(58, '06-08-2022', 'LC20', 2),
(59, '06-08-2022', 'LRT20', 6),
(60, '06-08-2022', 'LSA10', 0),
(61, '06-08-2022', 'LSA20', 4),
(62, '06-08-2022', 'LSC10', 12),
(63, '06-08-2022', 'LSC20', 0),
(64, '06-08-2022', 'LSM10', 0),
(65, '06-08-2022', 'LSM20', 3),
(66, '06-08-2022', 'LSR20', 2),
(67, '06-08-2022', 'MG20', 9),
(68, '06-08-2022', 'MR20', 3),
(69, '06-08-2022', 'PHMA20', 9),
(70, '06-08-2022', 'PHMB20', 2),
(71, '06-08-2022', 'PMA10', 0),
(72, '06-08-2022', 'PMA20', 10),
(73, '06-08-2022', 'PMAB20', 20),
(74, '06-08-2022', 'PMC10', 8),
(75, '06-08-2022', 'PMC20', 10),
(76, '06-08-2022', 'PMG10', 6),
(77, '06-08-2022', 'PMG20', 0),
(78, '06-08-2022', 'PMR10', 0),
(79, '06-08-2022', 'PMR20', 10),
(80, '06-08-2022', 'PMRB20', 2),
(81, '06-08-2022', 'PMRO20', 11),
(82, '06-08-2022', 'PMV10', 15),
(83, '06-08-2022', 'PMV20', 14),
(84, '06-08-2022', 'BK10', 0),
(85, '06-08-2022', 'BK20', 6),
(86, '06-08-2022', 'BKC20', 0),
(87, '06-08-2022', 'DA20', 0),
(88, '06-08-2022', 'DB20', 0),
(89, '06-08-2022', 'KB20', 0),
(90, '06-08-2022', 'KBC20', 0),
(91, '06-08-2022', 'KC20', 0),
(92, '06-08-2022', 'KI20', 0),
(93, '06-08-2022', 'KR20', 0),
(94, '06-08-2022', 'KS10', 0),
(95, '06-08-2022', 'KS20', 0),
(96, '06-08-2022', 'KT20', 0),
(97, '06-08-2022', 'KW20', 0),
(98, '06-08-2022', 'LAT20', 6),
(99, '06-08-2022', 'LC20', 0),
(100, '06-08-2022', 'LRT20', 6),
(101, '06-08-2022', 'LSA10', 0),
(102, '06-08-2022', 'LSA20', 0),
(103, '06-08-2022', 'LSC10', 0),
(104, '06-08-2022', 'LSC20', 0),
(105, '06-08-2022', 'LSM10', 0),
(106, '06-08-2022', 'LSM20', 6),
(107, '06-08-2022', 'LSR20', 6),
(108, '06-08-2022', 'MG20', 0),
(109, '06-08-2022', 'MR20', 0),
(110, '06-08-2022', 'PHMA20', 0),
(111, '06-08-2022', 'PHMB20', 0),
(112, '06-08-2022', 'PMA10', 0),
(113, '06-08-2022', 'PMA20', 10),
(114, '06-08-2022', 'PMAB20', 10),
(115, '06-08-2022', 'PMC10', 0),
(116, '06-08-2022', 'PMC20', 10),
(117, '06-08-2022', 'PMG10', 0),
(118, '06-08-2022', 'PMG20', 0),
(119, '06-08-2022', 'PMR10', 0),
(120, '06-08-2022', 'PMR20', 0),
(121, '06-08-2022', 'PMRB20', 0),
(122, '06-08-2022', 'PMRO20', 0),
(123, '06-08-2022', 'PMV10', 0),
(124, '06-08-2022', 'PMV20', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Cod_Producto` varchar(50) NOT NULL,
  `Npmbre_Producto` varchar(50) NOT NULL,
  `Precio_Efec` int NOT NULL,
  `Precio_deb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Cod_Producto`, `Npmbre_Producto`, `Precio_Efec`, `Precio_deb`) VALUES
('BA', 'BIGTIME AQUA', 400, 400),
('BB', 'BEBIDA BILZ', 1200, 1200),
('BCG', 'BENEDICTINO CON GAS', 600, 600),
('BS', 'BIGTIME SANDIA', 400, 400),
('CC', 'COCA COLA ', 1200, 1200),
('CCL', 'COCA COLA LATA', 900, 900),
('CCS', 'CACHANTUN CON GAS', 600, 600),
('CCZ', 'COCA COLA ZERO', 1200, 1200),
('CSS', 'CACHANTUN SIN GAS', 600, 600),
('KN', 'KAPO NARANJA', 500, 500),
('KP', 'KAPO PIÑA', 500, 500),
('S8', 'SUPER 8', 400, 400),
('SCM', 'SCORE MEDIO', 1200, 1200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuairo`
--

CREATE TABLE `tipousuairo` (
  `Ccod_Usuario` int NOT NULL,
  `Tipo_Usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipousuairo`
--

INSERT INTO `tipousuairo` (`Ccod_Usuario`, `Tipo_Usuario`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Clave` varchar(50) NOT NULL,
  `TipoUsuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Apellido`, `Correo`, `Clave`, `TipoUsuario`) VALUES
('Cristopher', 'Mella', 'crismella@gmail.com', 'Prueba1234', 1),
('Usuario', 'Prueba', 'prueba@prueba.cl', 'Prueba1234', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaprodflota`
--

CREATE TABLE `ventaprodflota` (
  `Indic` int NOT NULL,
  `Cod_Producto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaproducto`
--

CREATE TABLE `ventaproducto` (
  `Fecha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cod_Producto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cant_efect` int NOT NULL,
  `cant_deb` int NOT NULL,
  `valor_efec` int NOT NULL,
  `valor_deb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ventaproducto`
--

INSERT INTO `ventaproducto` (`Fecha`, `Cod_Producto`, `cant_efect`, `cant_deb`, `valor_efec`, `valor_deb`) VALUES
('06-10-2022', 'BA', 1, 0, 400, 0),
('06-10-2022', 'BB', 1, 0, 1200, 0),
('06-10-2022', 'CCL', 3, 0, 2700, 0),
('06-10-2022', 'S8', 4, 0, 1600, 0),
('06-10-2022', 'BA', 0, 1, 0, 400),
('06-10-2022', 'KP', 0, 1, 0, 500),
('06-12-2022', 'BA', 1, 0, 400, 0),
('06-12-2022', 'S8', 1, 1, 400, 400),
('06-13-2022', 'S8', 1, 1, 400, 400),
('06-13-2022', 'BA', 1, 1, 400, 400),
('06-13-2022', 'BA', 1, 0, 400, 0),
('06-13-2022', 'CC', 1, 0, 1200, 0),
('06-13-2022', 'KN', 1, 0, 500, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `fecha` varchar(20) NOT NULL,
  `cod_cigarro` varchar(20) NOT NULL,
  `cant_efec` int NOT NULL,
  `cant_deb` int NOT NULL,
  `valor_efe` int NOT NULL,
  `valor_deb` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`fecha`, `cod_cigarro`, `cant_efec`, `cant_deb`, `valor_efe`, `valor_deb`) VALUES
('06-01-2022', 'BK10', 0, 0, 0, 0),
('06-01-2022', 'BK20', 0, 0, 0, 0),
('06-01-2022', 'BKC20', 0, 0, 0, 0),
('06-01-2022', 'DA20', 0, 0, 0, 0),
('06-01-2022', 'DB20', 0, 0, 0, 0),
('06-01-2022', 'KB20', 0, 0, 0, 0),
('06-01-2022', 'KBC20', 0, 0, 0, 0),
('06-01-2022', 'KC20', 0, 0, 0, 0),
('06-01-2022', 'KI20', 0, 0, 0, 0),
('06-01-2022', 'KR20', 0, 0, 0, 0),
('06-01-2022', 'KS10', 0, 0, 0, 0),
('06-01-2022', 'KS20', 0, 0, 0, 0),
('06-01-2022', 'KT20', 0, 0, 0, 0),
('06-01-2022', 'KW20', 0, 0, 0, 0),
('06-01-2022', 'LAT20', 0, 0, 0, 0),
('06-01-2022', 'LC20', 0, 0, 0, 0),
('06-01-2022', 'LRT20', 0, 0, 0, 0),
('06-01-2022', 'LSA10', 0, 0, 0, 0),
('06-01-2022', 'LSA20', 0, 0, 0, 0),
('06-01-2022', 'LSC10', 0, 0, 0, 0),
('06-01-2022', 'LSC20', 0, 0, 0, 0),
('06-01-2022', 'LSM10', 0, 0, 0, 0),
('06-01-2022', 'LSM20', 0, 0, 0, 0),
('06-01-2022', 'LSR20', 0, 0, 0, 0),
('06-01-2022', 'MG20', 0, 0, 0, 0),
('06-01-2022', 'MR20', 0, 0, 0, 0),
('06-01-2022', 'PHMA20', 0, 0, 0, 0),
('06-01-2022', 'PHMB20', 0, 0, 0, 0),
('06-01-2022', 'PMA10', 0, 0, 0, 0),
('06-01-2022', 'PMA20', 0, 0, 0, 0),
('06-01-2022', 'PMAB20', 0, 0, 0, 0),
('06-01-2022', 'PMC10', 2, 0, 4600, 0),
('06-01-2022', 'PMC20', 0, 0, 0, 0),
('06-01-2022', 'PMG10', 1, 0, 2200, 0),
('06-01-2022', 'PMG20', 0, 0, 0, 0),
('06-01-2022', 'PMR10', 0, 0, 0, 0),
('06-01-2022', 'PMR20', 1, 0, 3400, 0),
('06-01-2022', 'PMRB20', 2, 0, 6600, 0),
('06-01-2022', 'PMRO20', 0, 0, 0, 0),
('06-01-2022', 'PMV10', 0, 0, 0, 0),
('06-01-2022', 'PMV20', 0, 0, 0, 0),
('06-02-2022', 'BK10', 0, 0, 0, 0),
('06-02-2022', 'BK20', 0, 0, 0, 0),
('06-02-2022', 'BKC20', 0, 0, 0, 0),
('06-02-2022', 'DA20', 0, 0, 0, 0),
('06-02-2022', 'DB20', 0, 0, 0, 0),
('06-02-2022', 'KB20', 0, 0, 0, 0),
('06-02-2022', 'KBC20', 0, 0, 0, 0),
('06-02-2022', 'KC20', 0, 0, 0, 0),
('06-02-2022', 'KI20', 0, 0, 0, 0),
('06-02-2022', 'KR20', 0, 0, 0, 0),
('06-02-2022', 'KS10', 0, 0, 0, 0),
('06-02-2022', 'KS20', 0, 0, 0, 0),
('06-02-2022', 'KT20', 0, 0, 0, 0),
('06-02-2022', 'KW20', 0, 0, 0, 0),
('06-02-2022', 'LAT20', 0, 0, 0, 0),
('06-02-2022', 'LC20', 0, 0, 0, 0),
('06-02-2022', 'LRT20', 0, 0, 0, 0),
('06-02-2022', 'LSA10', 0, 0, 0, 0),
('06-02-2022', 'LSA20', 1, 0, 4500, 0),
('06-02-2022', 'LSC10', 0, 0, 0, 0),
('06-02-2022', 'LSC20', 0, 0, 0, 0),
('06-02-2022', 'LSM10', 0, 0, 0, 0),
('06-02-2022', 'LSM20', 0, 0, 0, 0),
('06-02-2022', 'LSR20', 1, 0, 4500, 0),
('06-02-2022', 'MG20', 0, 0, 0, 0),
('06-02-2022', 'MR20', 0, 0, 0, 0),
('06-02-2022', 'PHMA20', 0, 0, 0, 0),
('06-02-2022', 'PHMB20', 0, 0, 0, 0),
('06-02-2022', 'PMA10', 0, 0, 0, 0),
('06-02-2022', 'PMA20', 6, 0, 20400, 0),
('06-02-2022', 'PMAB20', 3, 0, 9900, 0),
('06-02-2022', 'PMC10', 0, 0, 0, 0),
('06-02-2022', 'PMC20', 2, 0, 7600, 0),
('06-02-2022', 'PMG10', 0, 0, 0, 0),
('06-02-2022', 'PMG20', 0, 0, 0, 0),
('06-02-2022', 'PMR10', 0, 0, 0, 0),
('06-02-2022', 'PMR20', 0, 0, 0, 0),
('06-02-2022', 'PMRB20', 0, 0, 0, 0),
('06-02-2022', 'PMRO20', 1, 0, 3800, 0),
('06-02-2022', 'PMV10', 0, 0, 0, 0),
('06-02-2022', 'PMV20', 0, 0, 0, 0),
('06-03-2022', 'BK10', 0, 0, 0, 0),
('06-03-2022', 'BK20', 0, 0, 0, 0),
('06-03-2022', 'BKC20', 0, 0, 0, 0),
('06-03-2022', 'DA20', 0, 0, 0, 0),
('06-03-2022', 'DB20', 0, 0, 0, 0),
('06-03-2022', 'KB20', 0, 0, 0, 0),
('06-03-2022', 'KBC20', 0, 0, 0, 0),
('06-03-2022', 'KC20', 0, 0, 0, 0),
('06-03-2022', 'KI20', 0, 0, 0, 0),
('06-03-2022', 'KR20', 0, 0, 0, 0),
('06-03-2022', 'KS10', 0, 0, 0, 0),
('06-03-2022', 'KS20', 0, 0, 0, 0),
('06-03-2022', 'KT20', 0, 0, 0, 0),
('06-03-2022', 'KW20', 0, 0, 0, 0),
('06-03-2022', 'LAT20', 0, 0, 0, 0),
('06-03-2022', 'LC20', 0, 0, 0, 0),
('06-03-2022', 'LRT20', 0, 0, 0, 0),
('06-03-2022', 'LSA10', 0, 0, 0, 0),
('06-03-2022', 'LSA20', 0, 0, 0, 0),
('06-03-2022', 'LSC10', 0, 0, 0, 0),
('06-03-2022', 'LSC20', 0, 0, 0, 0),
('06-03-2022', 'LSM10', 0, 0, 0, 0),
('06-03-2022', 'LSM20', 1, 0, 4800, 0),
('06-03-2022', 'LSR20', 0, 0, 0, 0),
('06-03-2022', 'MG20', 0, 0, 0, 0),
('06-03-2022', 'MR20', 0, 0, 0, 0),
('06-03-2022', 'PHMA20', 0, 0, 0, 0),
('06-03-2022', 'PHMB20', 0, 0, 0, 0),
('06-03-2022', 'PMA10', 0, 0, 0, 0),
('06-03-2022', 'PMA20', 3, 0, 10200, 0),
('06-03-2022', 'PMAB20', 2, 0, 6600, 0),
('06-03-2022', 'PMC10', 0, 0, 0, 0),
('06-03-2022', 'PMC20', 0, 0, 0, 0),
('06-03-2022', 'PMG10', 0, 0, 0, 0),
('06-03-2022', 'PMG20', 0, 0, 0, 0),
('06-03-2022', 'PMR10', 0, 0, 0, 0),
('06-03-2022', 'PMR20', 0, 0, 0, 0),
('06-03-2022', 'PMRB20', 0, 0, 0, 0),
('06-03-2022', 'PMRO20', 0, 0, 0, 0),
('06-03-2022', 'PMV10', 0, 0, 0, 0),
('06-03-2022', 'PMV20', 3, 0, 11400, 0),
('06-06-2022', 'BK10', 0, 0, 0, 0),
('06-06-2022', 'BK20', 0, 0, 0, 0),
('06-06-2022', 'BKC20', 0, 0, 0, 0),
('06-06-2022', 'DA20', 0, 0, 0, 0),
('06-06-2022', 'DB20', 0, 0, 0, 0),
('06-06-2022', 'KB20', 0, 0, 0, 0),
('06-06-2022', 'KBC20', 0, 0, 0, 0),
('06-06-2022', 'KC20', 0, 0, 0, 0),
('06-06-2022', 'KI20', 1, 0, 4000, 0),
('06-06-2022', 'KR20', 0, 0, 0, 0),
('06-06-2022', 'KS10', 0, 0, 0, 0),
('06-06-2022', 'KS20', 0, 0, 0, 0),
('06-06-2022', 'KT20', 0, 0, 0, 0),
('06-06-2022', 'KW20', 0, 0, 0, 0),
('06-06-2022', 'LAT20', 0, 0, 0, 0),
('06-06-2022', 'LC20', 0, 0, 0, 0),
('06-06-2022', 'LRT20', 2, 0, 6400, 0),
('06-06-2022', 'LSA10', 0, 0, 0, 0),
('06-06-2022', 'LSA20', 1, 0, 4500, 0),
('06-06-2022', 'LSC10', 0, 0, 0, 0),
('06-06-2022', 'LSC20', 0, 0, 0, 0),
('06-06-2022', 'LSM10', 0, 0, 0, 0),
('06-06-2022', 'LSM20', 1, 0, 4800, 0),
('06-06-2022', 'LSR20', 0, 0, 0, 0),
('06-06-2022', 'MG20', 0, 0, 0, 0),
('06-06-2022', 'MR20', 0, 0, 0, 0),
('06-06-2022', 'PHMA20', 0, 0, 0, 0),
('06-06-2022', 'PHMB20', 0, 0, 0, 0),
('06-06-2022', 'PMA10', 0, 0, 0, 0),
('06-06-2022', 'PMA20', 0, 0, 0, 0),
('06-06-2022', 'PMAB20', 5, 0, 16500, 0),
('06-06-2022', 'PMC10', 0, 0, 0, 0),
('06-06-2022', 'PMC20', 3, 0, 11400, 0),
('06-06-2022', 'PMG10', 0, 0, 0, 0),
('06-06-2022', 'PMG20', 0, 0, 0, 0),
('06-06-2022', 'PMR10', 0, 0, 0, 0),
('06-06-2022', 'PMR20', 0, 0, 0, 0),
('06-06-2022', 'PMRB20', 0, 0, 0, 0),
('06-06-2022', 'PMRO20', 0, 0, 0, 0),
('06-06-2022', 'PMV10', 0, 0, 0, 0),
('06-06-2022', 'PMV20', 3, 0, 11400, 0),
('06-07-2022', 'BK10', 0, 0, 0, 0),
('06-07-2022', 'BK20', 0, 0, 0, 0),
('06-07-2022', 'BKC20', 0, 0, 0, 0),
('06-07-2022', 'DA20', 0, 0, 0, 0),
('06-07-2022', 'DB20', 0, 0, 0, 0),
('06-07-2022', 'KB20', 0, 0, 0, 0),
('06-07-2022', 'KBC20', 0, 0, 0, 0),
('06-07-2022', 'KC20', 0, 0, 0, 0),
('06-07-2022', 'KI20', 0, 0, 0, 0),
('06-07-2022', 'KR20', 0, 0, 0, 0),
('06-07-2022', 'KS10', 0, 0, 0, 0),
('06-07-2022', 'KS20', 0, 0, 0, 0),
('06-07-2022', 'KT20', 1, 0, 4000, 0),
('06-07-2022', 'KW20', 0, 0, 0, 0),
('06-07-2022', 'LAT20', 0, 0, 0, 0),
('06-07-2022', 'LC20', 1, 0, 4800, 0),
('06-07-2022', 'LRT20', 0, 0, 0, 0),
('06-07-2022', 'LSA10', 0, 0, 0, 0),
('06-07-2022', 'LSA20', 0, 0, 0, 0),
('06-07-2022', 'LSC10', 0, 0, 0, 0),
('06-07-2022', 'LSC20', 0, 0, 0, 0),
('06-07-2022', 'LSM10', 0, 0, 0, 0),
('06-07-2022', 'LSM20', 1, 0, 4800, 0),
('06-07-2022', 'LSR20', 0, 0, 0, 0),
('06-07-2022', 'MG20', 0, 0, 0, 0),
('06-07-2022', 'MR20', 0, 0, 0, 0),
('06-07-2022', 'PHMA20', 0, 0, 0, 0),
('06-07-2022', 'PHMB20', 0, 0, 0, 0),
('06-07-2022', 'PMA10', 0, 0, 0, 0),
('06-07-2022', 'PMA20', 0, 0, 0, 0),
('06-07-2022', 'PMAB20', 3, 0, 9900, 0),
('06-07-2022', 'PMC10', 0, 0, 0, 0),
('06-07-2022', 'PMC20', 4, 0, 15200, 0),
('06-07-2022', 'PMG10', 0, 0, 0, 0),
('06-07-2022', 'PMG20', 0, 0, 0, 0),
('06-07-2022', 'PMR10', 0, 0, 0, 0),
('06-07-2022', 'PMR20', 2, 0, 6800, 0),
('06-07-2022', 'PMRB20', 0, 0, 0, 0),
('06-07-2022', 'PMRO20', 0, 0, 0, 0),
('06-07-2022', 'PMV10', 1, 0, 2300, 0),
('06-07-2022', 'PMV20', 0, 0, 0, 0),
('06-08-2022', 'BK10', 0, 0, 0, 0),
('06-08-2022', 'BK20', 0, 0, 0, 0),
('06-08-2022', 'BKC20', 0, 0, 0, 0),
('06-08-2022', 'DA20', 0, 0, 0, 0),
('06-08-2022', 'DB20', 0, 0, 0, 0),
('06-08-2022', 'KB20', 0, 0, 0, 0),
('06-08-2022', 'KBC20', 0, 0, 0, 0),
('06-08-2022', 'KC20', 0, 0, 0, 0),
('06-08-2022', 'KI20', 0, 0, 0, 0),
('06-08-2022', 'KR20', 0, 0, 0, 0),
('06-08-2022', 'KS10', 0, 0, 0, 0),
('06-08-2022', 'KS20', 0, 0, 0, 0),
('06-08-2022', 'KT20', 0, 0, 0, 0),
('06-08-2022', 'KW20', 0, 0, 0, 0),
('06-08-2022', 'LAT20', 0, 0, 0, 0),
('06-08-2022', 'LC20', 0, 0, 0, 0),
('06-08-2022', 'LRT20', 0, 0, 0, 0),
('06-08-2022', 'LSA10', 0, 0, 0, 0),
('06-08-2022', 'LSA20', 0, 0, 0, 0),
('06-08-2022', 'LSC10', 0, 0, 0, 0),
('06-08-2022', 'LSC20', 0, 0, 0, 0),
('06-08-2022', 'LSM10', 0, 0, 0, 0),
('06-08-2022', 'LSM20', 0, 0, 0, 0),
('06-08-2022', 'LSR20', 0, 0, 0, 0),
('06-08-2022', 'MG20', 0, 0, 0, 0),
('06-08-2022', 'MR20', 0, 0, 0, 0),
('06-08-2022', 'PHMA20', 0, 0, 0, 0),
('06-08-2022', 'PHMB20', 0, 0, 0, 0),
('06-08-2022', 'PMA10', 0, 0, 0, 0),
('06-08-2022', 'PMA20', 0, 0, 0, 0),
('06-08-2022', 'PMAB20', 1, 0, 3300, 0),
('06-08-2022', 'PMC10', 3, 0, 6900, 0),
('06-08-2022', 'PMC20', 1, 0, 3800, 0),
('06-08-2022', 'PMG10', 0, 0, 0, 0),
('06-08-2022', 'PMG20', 0, 0, 0, 0),
('06-08-2022', 'PMR10', 0, 0, 0, 0),
('06-08-2022', 'PMR20', 3, 0, 10200, 0),
('06-08-2022', 'PMRB20', 0, 0, 0, 0),
('06-08-2022', 'PMRO20', 0, 0, 0, 0),
('06-08-2022', 'PMV10', 1, 0, 2300, 0),
('06-08-2022', 'PMV20', 1, 0, 3800, 0),
('06-09-2022', 'BK10', 0, 0, 0, 0),
('06-09-2022', 'BK20', 0, 0, 0, 0),
('06-09-2022', 'BKC20', 0, 0, 0, 0),
('06-09-2022', 'DA20', 0, 0, 0, 0),
('06-09-2022', 'DB20', 0, 0, 0, 0),
('06-09-2022', 'KB20', 0, 0, 0, 0),
('06-09-2022', 'KBC20', 0, 0, 0, 0),
('06-09-2022', 'KC20', 0, 0, 0, 0),
('06-09-2022', 'KI20', 0, 0, 0, 0),
('06-09-2022', 'KR20', 0, 0, 0, 0),
('06-09-2022', 'KS10', 0, 0, 0, 0),
('06-09-2022', 'KS20', 0, 0, 0, 0),
('06-09-2022', 'KT20', 0, 0, 0, 0),
('06-09-2022', 'KW20', 0, 0, 0, 0),
('06-09-2022', 'LAT20', 0, 0, 0, 0),
('06-09-2022', 'LC20', 0, 0, 0, 0),
('06-09-2022', 'LRT20', 0, 0, 0, 0),
('06-09-2022', 'LSA10', 0, 0, 0, 0),
('06-09-2022', 'LSA20', 0, 0, 0, 0),
('06-09-2022', 'LSC10', 0, 0, 0, 0),
('06-09-2022', 'LSC20', 0, 0, 0, 0),
('06-09-2022', 'LSM10', 0, 0, 0, 0),
('06-09-2022', 'LSM20', 0, 0, 0, 0),
('06-09-2022', 'LSR20', 0, 0, 0, 0),
('06-09-2022', 'MG20', 1, 0, 4200, 0),
('06-09-2022', 'MR20', 1, 0, 4200, 0),
('06-09-2022', 'PHMA20', 1, 0, 3000, 0),
('06-09-2022', 'PHMB20', 1, 0, 3000, 0),
('06-09-2022', 'PMA10', 0, 0, 0, 0),
('06-09-2022', 'PMA20', 0, 0, 0, 0),
('06-09-2022', 'PMAB20', 0, 0, 0, 0),
('06-09-2022', 'PMC10', 0, 0, 0, 0),
('06-09-2022', 'PMC20', 0, 0, 0, 0),
('06-09-2022', 'PMG10', 0, 0, 0, 0),
('06-09-2022', 'PMG20', 0, 0, 0, 0),
('06-09-2022', 'PMR10', 0, 0, 0, 0),
('06-09-2022', 'PMR20', 0, 0, 0, 0),
('06-09-2022', 'PMRB20', 0, 0, 0, 0),
('06-09-2022', 'PMRO20', 0, 0, 0, 0),
('06-09-2022', 'PMV10', 0, 0, 0, 0),
('06-09-2022', 'PMV20', 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD PRIMARY KEY (`idboleta`);

--
-- Indices de la tabla `cigarros`
--
ALTER TABLE `cigarros`
  ADD PRIMARY KEY (`Cod_Cigarro`);

--
-- Indices de la tabla `ingreso_cigarros`
--
ALTER TABLE `ingreso_cigarros`
  ADD PRIMARY KEY (`id_ingreso`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Cod_Producto`);

--
-- Indices de la tabla `ventaprodflota`
--
ALTER TABLE `ventaprodflota`
  ADD PRIMARY KEY (`Indic`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boletas`
--
ALTER TABLE `boletas`
  MODIFY `idboleta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ingreso_cigarros`
--
ALTER TABLE `ingreso_cigarros`
  MODIFY `id_ingreso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de la tabla `ventaprodflota`
--
ALTER TABLE `ventaprodflota`
  MODIFY `Indic` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
