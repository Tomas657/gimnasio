-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2021 a las 02:27:02
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siempre en forma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `IDClase` int(11) NOT NULL,
  `Clase` varchar(30) NOT NULL,
  `Dias` varchar(30) NOT NULL,
  `Horarios` varchar(30) NOT NULL,
  `Instructor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`IDClase`, `Clase`, `Dias`, `Horarios`, `Instructor`) VALUES
(1, 'Aerobico', 'lun-mie-vie', '9-10', 1),
(2, 'Footing', 'mar-jue', '13-16', 2),
(3, 'Yoga', 'jue - sab', '12 - 14\'30', 4),
(4, 'Spinning', 'lun-mie-vie', '6 - 15', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructores`
--

CREATE TABLE `instructores` (
  `IDInstructor` int(11) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `DNI` bigint(20) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Titulacion` varchar(30) NOT NULL,
  `Experiencia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instructores`
--

INSERT INTO `instructores` (`IDInstructor`, `Apellido`, `Nombre`, `DNI`, `Nacimiento`, `Email`, `Titulacion`, `Experiencia`) VALUES
(1, 'Tevez ', 'Carlos', 34672892347, '2000-01-01', 'emailrandom2@gmail.com', 'Panadero', 'Profesor de taekwondo'),
(2, 'Rabadán', 'Paco', 24832756, '1976-07-10', 'random@gmail.com', 'Prof. Ed. Fisica', 'Prof. de Voley'),
(3, 'Almendra', 'Juan Carlos', 23523892, '1987-06-24', 'emailrandom13@gmail.com', 'fiambreria', 'google'),
(4, 'Smirnoff', 'Lucho', 234789253, '2008-07-19', 'sisi@gmail.com', 'Rugbier', 'Rugbier'),
(5, 'Perez', 'Chucho', 23534667, '1987-11-18', 'blablable@gmail.com', 'Personal Trainer ', 'Dueño de un Gimnasio ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socioasisteclase`
--

CREATE TABLE `socioasisteclase` (
  `idAsistencia` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  `idClase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `IDSocio` int(11) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `DNI` bigint(20) NOT NULL,
  `Domicilio` varchar(30) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Profesion` varchar(30) NOT NULL,
  `Clases` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`IDSocio`, `Apellido`, `Nombre`, `DNI`, `Domicilio`, `Telefono`, `Email`, `Profesion`, `Clases`) VALUES
(2, 'Rabadán', 'Paco Jr', 45993171, 'Lanzilota 221', '2236942264', 'nacho17j@gmail.com', 'Electricista', '2'),
(3, 'Sagaut', 'Milagros', 42282919, 'Lanzilota 221', '2235272365', 'milagrossagaut@gmail.com', 'Estudiante', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`IDClase`);

--
-- Indices de la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`IDInstructor`);

--
-- Indices de la tabla `socioasisteclase`
--
ALTER TABLE `socioasisteclase`
  ADD PRIMARY KEY (`idAsistencia`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`IDSocio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `IDClase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `instructores`
--
ALTER TABLE `instructores`
  MODIFY `IDInstructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `socioasisteclase`
--
ALTER TABLE `socioasisteclase`
  MODIFY `idAsistencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `IDSocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
