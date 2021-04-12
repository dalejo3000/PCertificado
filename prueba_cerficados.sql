-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2021 a las 19:17:11
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_cerficados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `cedula` char(10) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `cedula`, `id_categoria`, `fecha_creacion`) VALUES
(1, 'admin ', '000000000', 8, '2021-04-09'),
(46, 'David Romero', '1234567890', 3, '2021-04-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `duracion` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `imagen` varchar(400) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `usuario_creacion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `descripcion`, `duracion`, `fecha_inicio`, `imagen`, `fecha_creacion`, `usuario_creacion`) VALUES
(1, 'Matematicas', 'Curso de Matematicas', 10, '2021-03-10', '', '2021-03-26', ''),
(2, 'Lenguaje', 'Curso de Lenguaje', 12, '2021-03-11', '', '2021-03-26', ''),
(3, 'Sociales', 'Curso de Sociales', 10, '2021-03-11', '', '2021-03-26', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8 NOT NULL,
  `telefono` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `img_perfil` varchar(300) CHARACTER SET utf8 NOT NULL,
  `nivel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cedula` char(10) CHARACTER SET utf8 NOT NULL,
  `fecha` date NOT NULL,
  `fecha_creacion` date NOT NULL,
  `usuario_creacion` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`, `cedula`, `fecha`, `fecha_creacion`, `usuario_creacion`) VALUES
(1, 'admin ', '00000', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'default.jpg', 'admin', '', '0000-00-00', '2021-04-09', '0'),
(2, 'estudiante ', '', 'estudiante', 'd5d4bc1d777ca359a21da72c6175e5182ed8f1cd', 'default.jpg', 'cliente', '', '0000-00-00', '2021-04-10', '0'),
(3, 'David Romero', '+593998004766', 'dalejo3000@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente', '1234567890', '2021-04-09', '2021-04-12', '0'),
(4, 'Alejandro Vaca', '+593998004766', 'alejo@prueba.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'admin', '1122334455', '2021-04-23', '2021-04-12', '0'),
(5, 'Carlos R', '0998004766', 'cromeroeconomia@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente', '1234', '2021-04-08', '2021-04-12', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
