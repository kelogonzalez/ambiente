-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2021 a las 21:47:19
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
-- Base de datos: `librarysystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `CodigoAdmin` varchar(70) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`CodigoAdmin`, `Estado`, `Nombre`, `NombreUsuario`, `Clave`, `Email`) VALUES
('I777YA1N5802', 'Activo', 'Administrador', 'SuperAdministrador', 'YnRXSjhwRTNTRXJpV3k0MUtVSTloQT09', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `ID` int(100) NOT NULL,
  `Codigo` varchar(100) NOT NULL,
  `CodigoUsuario` varchar(70) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Fecha` varchar(30) NOT NULL,
  `Entrada` varchar(30) NOT NULL,
  `Salida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`ID`, `Codigo`, `CodigoUsuario`, `Tipo`, `Fecha`, `Entrada`, `Salida`) VALUES
(1, 'UKI777YA1N5802N7334-1', 'I777YA1N5802', 'Administrador', '08-04-2021', '08:25:27', '09:21:55'),
(2, 'UKI777YA1N5802N3006-2', 'I777YA1N5802', 'Administrador', '08-04-2021', '09:38:14', '09:38:39'),
(3, 'UKI777YA1N5802N2180-3', 'I777YA1N5802', 'Administrador', '08-04-2021', '09:57:16', '11:41:07'),
(4, 'UKI777YA1N5802N0562-4', 'I777YA1N5802', 'Administrador', '08-04-2021', '13:02:08', 'Sin registrar'),
(5, 'UKI777YA1N5802N5413-5', 'I777YA1N5802', 'Administrador', '09-04-2021', '07:48:56', '10:56:41'),
(6, 'UKI777YA1N5802N5523-6', 'I777YA1N5802', 'Administrador', '09-04-2021', '10:57:39', 'Sin registrar'),
(7, 'UKI777YA1N5802N3534-7', 'I777YA1N5802', 'Administrador', '13-04-2021', '09:07:43', 'Sin registrar'),
(8, 'UKI777YA1N5802N4729-8', 'I777YA1N5802', 'Administrador', '16-04-2021', '07:13:55', 'Sin registrar'),
(9, 'UKI777YA1N5802N0593-9', 'I777YA1N5802', 'Administrador', '20-04-2021', '13:14:29', 'Sin registrar'),
(10, 'UKI777YA1N5802N7268-10', 'I777YA1N5802', 'Administrador', '22-04-2021', '07:35:43', '11:30:34'),
(11, 'UKI777YA1N5802N2927-11', 'I777YA1N5802', 'Administrador', '22-04-2021', '11:30:50', 'Sin registrar'),
(12, 'UKI777YA1N5802N9443-12', 'I777YA1N5802', 'Administrador', '22-04-2021', '15:29:47', 'Sin registrar'),
(13, 'UKI777YA1N5802N1194-13', 'I777YA1N5802', 'Administrador', '10-05-2021', '07:21:15', '07:24:12'),
(14, 'UKI777YA1N5802N2796-14', 'I777YA1N5802', 'Administrador', '10-05-2021', '07:43:43', 'Sin registrar'),
(15, 'UKI777YA1N5802N4538-15', 'I777YA1N5802', 'Administrador', '11-05-2021', '09:54:40', 'Sin registrar'),
(16, 'UKI777YA1N5802N4100-16', 'I777YA1N5802', 'Administrador', '12-05-2021', '07:03:20', 'Sin registrar'),
(17, 'UKI777YA1N5802N0352-17', 'I777YA1N5802', 'Administrador', '12-05-2021', '10:57:39', 'Sin registrar'),
(18, 'UKI777YA1N5802N2815-18', 'I777YA1N5802', 'Administrador', '13-05-2021', '10:47:26', '15:29:51'),
(19, 'UKI777YA1N5802N9484-19', 'I777YA1N5802', 'Administrador', '13-05-2021', '15:30:25', 'Sin registrar'),
(20, 'UKI777YA1N5802N9039-20', 'I777YA1N5802', 'Administrador', '14-05-2021', '07:06:20', 'Sin registrar'),
(21, 'UKI777YA1N5802N2741-21', 'I777YA1N5802', 'Administrador', '17-05-2021', '10:52:19', 'Sin registrar'),
(22, 'UKI777YA1N5802N0858-22', 'I777YA1N5802', 'Administrador', '18-05-2021', '07:43:40', 'Sin registrar'),
(23, 'UKI777YA1N5802N5440-23', 'I777YA1N5802', 'Administrador', '18-05-2021', '14:44:52', '14:45:42'),
(26, 'UKI777YA1N5802N2594-26', 'I777YA1N5802', 'Administrador', '18-05-2021', '15:12:43', '15:13:00'),
(30, 'UKI777YA1N5802N0010-30', 'I777YA1N5802', 'Administrador', '18-05-2021', '15:15:37', '15:16:41'),
(35, 'UKI777YA1N5802N9668-35', 'I777YA1N5802', 'Administrador', '18-05-2021', '15:48:23', 'Sin registrar'),
(36, 'UKI777YA1N5802N1751-36', 'I777YA1N5802', 'Administrador', '19-05-2021', '09:06:30', '11:04:13'),
(37, 'UKI777YA1N5802N3510-37', 'I777YA1N5802', 'Administrador', '19-05-2021', '12:53:11', '13:04:45'),
(38, 'UKI777YA1N5802N1179-38', 'I777YA1N5802', 'Administrador', '19-05-2021', '13:04:58', '13:42:37'),
(39, 'UKI777YA1N5802N7032-30', 'I777YA1N5802', 'Administrador', '19-05-2021', '13:43:08', 'Sin registrar'),
(40, 'UKI777YA1N5802N5982-31', 'I777YA1N5802', 'Administrador', '20-05-2021', '11:10:10', 'Sin registrar'),
(41, 'UKI777YA1N5802N3319-32', 'I777YA1N5802', 'Administrador', '21-05-2021', '07:09:08', 'Sin registrar'),
(42, 'UKI777YA1N5802N9447-33', 'I777YA1N5802', 'Administrador', '25-05-2021', '10:47:38', 'Sin registrar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCategoria` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCategoria`, `Nombre`) VALUES
('001', 'Hospedaje'),
('002', 'Alimentos/Bebidas'),
('003', 'Recreativas'),
('004', 'Guias'),
('005', 'Transporte Turístico'),
('006', 'Transporte Acuatico'),
('007', 'Transporte Público'),
('008', 'Taxis'),
('009', 'Tricimoto'),
('010', 'Esparcimiento'),
('011', 'Agencia de Viajes'),
('012', 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `DUI` varchar(20) NOT NULL,
  `CodigoSeccion` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Especialidad` varchar(40) NOT NULL,
  `Jornada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `DUI` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `NIE` varchar(20) NOT NULL,
  `DUI` varchar(20) NOT NULL,
  `CodigoSeccion` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Parentesco` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `CodigoInfraestructura` varchar(30) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `NombreDirector` varchar(100) NOT NULL,
  `NombreBibliotecario` varchar(100) NOT NULL,
  `Moneda` varchar(2) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`CodigoInfraestructura`, `Nombre`, `NombreDirector`, `NombreBibliotecario`, `Moneda`, `Telefono`, `Year`) VALUES
('0968532700001', 'Dirección de Turismo', 'Sra. Edith Maldonado', 'Lcdo. Fabricio Tello', '$', '0987226633', 2021);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `CodigoLibro` varchar(100) NOT NULL,
  `CodigoLibroManual` varchar(100) NOT NULL,
  `CodigoCategoria` varchar(20) NOT NULL,
  `CodigoProveedor` varchar(70) NOT NULL,
  `CodigoInfraestructura` varchar(20) NOT NULL,
  `Autor` varchar(70) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Year` varchar(80) NOT NULL,
  `Estimado` int(30) NOT NULL,
  `idioma` varchar(200) NOT NULL,
  `hombres` int(10) NOT NULL,
  `mujeres` int(10) NOT NULL,
  `discapacidad` int(10) NOT NULL,
  `genero` int(10) NOT NULL,
  `reservas` varchar(2) NOT NULL,
  `simples` int(100) NOT NULL,
  `dobles` int(100) NOT NULL,
  `triples` int(100) NOT NULL,
  `matrimonio` int(100) NOT NULL,
  `familia` int(100) NOT NULL,
  `camas` int(100) NOT NULL,
  `plazas` int(100) NOT NULL,
  `mesas` int(100) NOT NULL,
  `banoshombres` int(100) NOT NULL,
  `banosmujeres` int(100) NOT NULL,
  `escape` varchar(2) NOT NULL,
  `pagos` varchar(100) NOT NULL,
  `parqueaderos` varchar(2) NOT NULL,
  `seguridad` varchar(100) NOT NULL,
  `mascotas` varchar(2) NOT NULL,
  `limpieza` varchar(2) NOT NULL,
  `folleteria` varchar(2) NOT NULL,
  `promocion` varchar(100) NOT NULL,
  `capacitacion` varchar(2) NOT NULL,
  `capacidad` int(100) NOT NULL,
  `senaletica` varchar(2) NOT NULL,
  `wifi` varchar(2) NOT NULL,
  `operadores` varchar(2) NOT NULL,
  `turnos` int(100) NOT NULL,
  `bicicletas` varchar(2) NOT NULL,
  `maleteros` varchar(2) NOT NULL,
  `chalecos` varchar(2) NOT NULL,
  `compania` varchar(100) NOT NULL,
  `licencias` varchar(1) NOT NULL,
  `boton` varchar(2) NOT NULL,
  `cinturones` varchar(2) NOT NULL,
  `vehiculos` int(100) NOT NULL,
  `pasajeros` int(100) NOT NULL,
  `socios` int(100) NOT NULL,
  `choferes` int(100) NOT NULL,
  `asientos` varchar(2) NOT NULL,
  `tv` varchar(2) NOT NULL,
  `ac` varchar(2) NOT NULL,
  `microfono` varchar(2) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `Titulo` varchar(77) NOT NULL,
  `Edicion` varchar(50) NOT NULL,
  `Ubicacion` varchar(50) NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `Editorial` varchar(70) NOT NULL,
  `Existencias` varchar(50) NOT NULL,
  `Prestado` int(20) NOT NULL,
  `Imagen` varchar(535) NOT NULL,
  `PDF` varchar(535) NOT NULL,
  `Download` varchar(5) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`CodigoLibro`, `CodigoLibroManual`, `CodigoCategoria`, `CodigoProveedor`, `CodigoInfraestructura`, `Autor`, `Pais`, `Year`, `Estimado`, `idioma`, `hombres`, `mujeres`, `discapacidad`, `genero`, `reservas`, `simples`, `dobles`, `triples`, `matrimonio`, `familia`, `camas`, `plazas`, `mesas`, `banoshombres`, `banosmujeres`, `escape`, `pagos`, `parqueaderos`, `seguridad`, `mascotas`, `limpieza`, `folleteria`, `promocion`, `capacitacion`, `capacidad`, `senaletica`, `wifi`, `operadores`, `turnos`, `bicicletas`, `maleteros`, `chalecos`, `compania`, `licencias`, `boton`, `cinturones`, `vehiculos`, `pasajeros`, `socios`, `choferes`, `asientos`, `tv`, `ac`, `microfono`, `estado`, `sector`, `referencia`, `Titulo`, `Edicion`, `Ubicacion`, `Cargo`, `Editorial`, `Existencias`, `Prestado`, `Imagen`, `PDF`, `Download`, `Descripcion`) VALUES
('I0968532700001Y2021C001B2N8684', '002', '008', 'I0968532700001Y2021P2N7834', '0968532700001', 'Abraham Ramirezd', 'Quito', 'puertoinca@yahoo.com', 987226633, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', '', '', 'Lejos de alla', 'Gran Puerto Inca', 'Tres cerritos', 'En las mañanas', 'www.naranjal.gob.ec', '', '1', 0, 'I0968532700001Y2021C001B2N8684.png', 'I0968532700001Y2021C001B2N8684.pdf', 'yes', 'aqui el resumen'),
('I0968532700001Y2021C002B5N9185', '5625225228410', '002', 'I0968532700001Y2021P6N8028', '0968532700001', 'Tarqui s/n', 'Naranjal', 'madera@gmail.com', 985522215, 'Español', 2, 6, 0, 0, 'Si', 0, 0, 0, 0, 0, 0, 30, 6, 1, 1, 'si', 'Efectivo', 'No', 'Camaras, Guardia', 'No', 'No', 'Si', 'Facebook, Radio', 'Si', 0, 'Si', 'Si', 'Si', 0, 'no', 'no', 'no', 'sn', 'n', 'No', 'No', 0, 0, 0, 0, '0', 'Si', 'SI', 'Si', 'Muy Bueno', 'Establecimiento', 'A media cuadra de Disensa', 'Madera Fina', 'San Miguel', '08:00 am a 15:00', 'www.maderafina.com', '', '', 0, 'I0968532700001Y2021C002B5N9185.png', 'I0968532700001Y2021C002B5N9185.pdf', 'yes', 'CUalquier cosa'),
('I0968532700001Y2021C003B6N5215', '254554054504', '003', 'I0968532700001Y2021P3N9548', '0968532700001', 'Comunidad Shuar', 'Naranjal', 'shuar@yahoo.es', 427501818, 'Español y Shuar', 8, 15, 0, 0, 'Si', 0, 0, 0, 0, 2, 7, 9, 0, 2, 1, 'No', 'Efectivo', 'Si', 'Camaras, Guardia', 'Si', 'No', 'No', 'facebook', 'Si', 800, 'Si', 'No', 'SI', 0, 'NO', 'No', 'No', 'Centro Comunitario Shuarense', 'N', 'Si', 'NO', 0, 0, 60, 0, 'no', 'no', 'no', 'si', 'Bueno', 'Sitio Turistico', 'sn', 'Centro Shuarense', 'sn', '08h00 a 18h00', 'shuar.com', 'Jaime Roldos', '1', 0, 'I0968532700001Y2021C003B6N5215.jpg', 'I0968532700001Y2021C003B6N5215.pdf', 'yes', 'ajdasj dlkaslkd'),
('I0968532700001Y2021C009B5N5519', '3423545', '009', 'I0968532700001Y2021P3N9548', '0968532700001', 'Av. Olmedo', 'Naranjal', 'trix00000@yahoo.es', 2147483647, 'Ingles', 3, 54, 2, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'Los trix super campeones', 'Las Canas', 'Todo el dia', 'trix.com', 'San Felipe', '1', 0, 'I0968532700001Y2021C009B5N5519.png', 'I0968532700001Y2021C009B5N5519.pdf', 'yes', 'No hay'),
('I0968532700001Y2021C012B7N8462', 'asa232', '012', 'I0968532700001Y2021P2N7834', '0968532700001', 'poapo', 'popopo', 'asdasdasdas@naranjal.gob.ec', 2147483647, 'Frances', 9, 9, 9, 9, 'Si', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'No', 'Efectivo', 'Si', 'Perro', 'Si', 'Si', 'Si', 'Facebook', 'Si', 1, 'No', 'Si', 'No', 1, 'No', 'No', 'No', 'Tu Compañia', 'B', 'No', 'No', 1, 1, 1, 1, 'No', 'No', 'Si', 'No', 'Malisimo', 'Balao', 'LAS LOMAS', 'ahshhssfsfd3', 'adfadf', '5 de la mañana', 'agagafad.com', '', '', 0, 'I0968532700001Y2021C012B7N8462.png', 'I0968532700001Y2021C012B7N8462.pdf', 'yes', 'Se actualizo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `DUI` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `CodigoPrestamo` varchar(70) NOT NULL,
  `CodigoLibro` varchar(100) NOT NULL,
  `CodigoAdmin` varchar(70) NOT NULL,
  `FechaSalida` varchar(30) NOT NULL,
  `FechaEntrega` varchar(30) NOT NULL,
  `Estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamodocente`
--

CREATE TABLE `prestamodocente` (
  `CodigoPrestamo` varchar(70) NOT NULL,
  `DUI` varchar(20) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamoestudiante`
--

CREATE TABLE `prestamoestudiante` (
  `CodigoPrestamo` varchar(70) NOT NULL,
  `NIE` varchar(20) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamopersonal`
--

CREATE TABLE `prestamopersonal` (
  `CodigoPrestamo` varchar(70) NOT NULL,
  `DUI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamovisitante`
--

CREATE TABLE `prestamovisitante` (
  `CodigoPrestamo` varchar(70) NOT NULL,
  `DUI` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Institucion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `CodigoProveedor` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `ResponAtencion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`CodigoProveedor`, `Nombre`, `Email`, `Direccion`, `Telefono`, `ResponAtencion`) VALUES
('I0968532700001Y2021P1N3876', 'Turismo', '', 'Pana', '', ''),
('I0968532700001Y2021P2N7834', '1515151ccdf', '', '1', '', ''),
('I0968532700001Y2021P3N9548', '3432', '', 't', '', ''),
('I0968532700001Y2021P4N2315', 'Turiiis', '', 'asdasasda', '', ''),
('I0968532700001Y2021P5N1065', '89798452345jksad', '', 'adfa', '', ''),
('I0968532700001Y2021P6N8028', 'A', '', 'A1', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `CodigoSeccion` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`CodigoSeccion`, `Nombre`) VALUES
('I0968532700001Y2021S1N7062', '0545445151515 Hospedaje A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`CodigoAdmin`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PrimaryKey` (`CodigoUsuario`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCategoria`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`DUI`),
  ADD KEY `CodigoSeccion` (`CodigoSeccion`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`DUI`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`NIE`),
  ADD KEY `DUI` (`DUI`),
  ADD KEY `CodigoSeccion` (`CodigoSeccion`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`CodigoInfraestructura`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`CodigoLibro`),
  ADD KEY `CodigoCategoria` (`CodigoCategoria`),
  ADD KEY `CodigoProveedor` (`CodigoProveedor`),
  ADD KEY `CodigoInfraestructura` (`CodigoInfraestructura`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`DUI`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`CodigoPrestamo`),
  ADD KEY `CodigoLibro` (`CodigoLibro`),
  ADD KEY `CodigoAdmin` (`CodigoAdmin`);

--
-- Indices de la tabla `prestamodocente`
--
ALTER TABLE `prestamodocente`
  ADD KEY `CodigoPrestamo` (`CodigoPrestamo`),
  ADD KEY `DUI` (`DUI`),
  ADD KEY `CodigoPrestamo_2` (`CodigoPrestamo`);

--
-- Indices de la tabla `prestamoestudiante`
--
ALTER TABLE `prestamoestudiante`
  ADD KEY `CodigoPrestamo` (`CodigoPrestamo`),
  ADD KEY `NIE` (`NIE`);

--
-- Indices de la tabla `prestamopersonal`
--
ALTER TABLE `prestamopersonal`
  ADD KEY `CodigoPrestamo` (`CodigoPrestamo`),
  ADD KEY `DUI` (`DUI`);

--
-- Indices de la tabla `prestamovisitante`
--
ALTER TABLE `prestamovisitante`
  ADD KEY `CodigoPrestamo` (`CodigoPrestamo`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`CodigoProveedor`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`CodigoSeccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`DUI`) REFERENCES `encargado` (`DUI`),
  ADD CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`CodigoSeccion`) REFERENCES `seccion` (`CodigoSeccion`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`CodigoCategoria`) REFERENCES `categoria` (`CodigoCategoria`),
  ADD CONSTRAINT `libro_ibfk_4` FOREIGN KEY (`CodigoProveedor`) REFERENCES `proveedor` (`CodigoProveedor`),
  ADD CONSTRAINT `libro_ibfk_5` FOREIGN KEY (`CodigoInfraestructura`) REFERENCES `institucion` (`CodigoInfraestructura`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_5` FOREIGN KEY (`CodigoLibro`) REFERENCES `libro` (`CodigoLibro`);

--
-- Filtros para la tabla `prestamodocente`
--
ALTER TABLE `prestamodocente`
  ADD CONSTRAINT `prestamodocente_ibfk_1` FOREIGN KEY (`CodigoPrestamo`) REFERENCES `prestamo` (`CodigoPrestamo`),
  ADD CONSTRAINT `prestamodocente_ibfk_2` FOREIGN KEY (`DUI`) REFERENCES `docente` (`DUI`);

--
-- Filtros para la tabla `prestamoestudiante`
--
ALTER TABLE `prestamoestudiante`
  ADD CONSTRAINT `prestamoestudiante_ibfk_1` FOREIGN KEY (`NIE`) REFERENCES `estudiante` (`NIE`),
  ADD CONSTRAINT `prestamoestudiante_ibfk_2` FOREIGN KEY (`CodigoPrestamo`) REFERENCES `prestamo` (`CodigoPrestamo`);

--
-- Filtros para la tabla `prestamopersonal`
--
ALTER TABLE `prestamopersonal`
  ADD CONSTRAINT `prestamopersonal_ibfk_1` FOREIGN KEY (`CodigoPrestamo`) REFERENCES `prestamo` (`CodigoPrestamo`),
  ADD CONSTRAINT `prestamopersonal_ibfk_2` FOREIGN KEY (`DUI`) REFERENCES `personal` (`DUI`);

--
-- Filtros para la tabla `prestamovisitante`
--
ALTER TABLE `prestamovisitante`
  ADD CONSTRAINT `prestamovisitante_ibfk_1` FOREIGN KEY (`CodigoPrestamo`) REFERENCES `prestamo` (`CodigoPrestamo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
