-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2021 a las 22:26:46
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpdesdecero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nombre` varchar(100) NOT NULL,
  `mes` varchar(20) NOT NULL,
  `anios` int(11) NOT NULL,
  `adultos` int(100) NOT NULL,
  `ninos` int(100) NOT NULL,
  `adultosmayores` int(100) NOT NULL,
  `procedencia` varchar(200) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nombre`, `mes`, `anios`, `adultos`, `ninos`, `adultosmayores`, `procedencia`, `total`) VALUES
('Kelo', 'Gonzalez', 0, 0, 0, 0, '', 0),
('Geekmania', 'Mayo', 0, 2, 3, 3, 'Guayaquil, Quito, Cuenca, Brasil', 0),
('Mojito Cubano', 'Mayo', 0, 56, 3, 2, 'Quito y Brasil', 0),
('Rubi', 'Mayo', 0, 12, 65, 32, 'Rusia y Francia', 80),
('Yayita', 'Mayo', 0, 21, 45, 3, 'EEUU y Rusia', 69),
('', '', 0, 0, 0, 0, '', 0),
('', '', 0, 0, 0, 0, '', 0),
('Pomelo', 'Mayo', 0, 3, 4, 5, 'Guayaquil', 12),
('Coquito', 'Febrero', 0, 3, 5, 5, 'Quito y Sucumbios', 13),
('Coquito', 'Enero', 0, 3, 4, 1, 'Naranjal y Guayaquil', 8),
('Muebleria Palito', 'Enero', 2021, 2, 2, 2, 'Quito y Brasil', 6),
('Dulce Travesura', 'Enero', 2021, 3, 4, 12, 'Andalucia', 8),
('Koala', 'Febrero', 2021, 9, 4, 15, 'Paris', 14),
('A', 'Mayo', 2021, 20, 20, 20, 'Q', 42),
('A', 'Junio', 2021, 20, 20, 20, 'Q', 60);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
