-- Base de datos: almacen
-- Proyecto: Buscar datos en tiempo real con PHP, MySQL y AJAX
-- Autor: Marco Robles
-- Team: Códigos de Programación


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--
CREATE DATABASE IF NOT EXISTS `almacen` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `almacen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Canciones`
--

CREATE TABLE `canciones` (
  `id` int NOT NULL,
  `cancion` varchar(32) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `artista` varchar(32) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `album` varchar(32) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `duracion` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `canciones` (`id`, `cancion`, `artista`, `album`, `fecha`, `duracion`) VALUES
(1, 'Pastillas para Dormir', 'Estopa', 'Rumba a Lo Desconocido', '2015-10-02', 197800),
(2, 'Paseo', 'Estopa', 'Voces de Ultrarumba', '2005-11-16', 216440),
(3, 'Despertar', 'Estopa, Amaral', 'Despertar', '2020-12-03', 188279);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
