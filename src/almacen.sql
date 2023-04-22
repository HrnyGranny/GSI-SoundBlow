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
(3, 'Despertar', 'Estopa, Amaral', 'Despertar', '2020-12-03', 188279),
(4, 'Superpoderes', 'Leiva', 'Nuclear', '2019-03-22', 179117),
(5, 'Sube a mi cohete', 'Pignoise', 'Sube a mi cohete', '2008-09-16', 194146),
(6, 'Te entiendo', 'Pignoise', 'Anunciado en Television', '2006-04-10', 239920),
(7, 'La Llamada', 'Leiva', 'La Llamada', '2017-09-27', 240205),
(8, 'Princesas', 'Pereza', 'Animales', '2005-04-07', 217000),
(9, 'Una Foto en Blanco y Negro', 'El Canto Del Loco', 'Estados de Animo', '2003', 209893),
(10, 'Como Camarón', 'Estopa', 'Estopa', '1999-10-18', 202026),
(11, 'Nada que perder', 'Pignoise', 'Anunciado en Television', '2006-04-10', 197600),
(12, 'Estrella Polar (with Juan Aguirre)', 'Pereza, Juan Aguirre', 'Aproximaciones', '2007', 211506),
(13, 'Como Si Fueras a Morir Mañana', 'Leiva', 'Nuclear', '2019-03-22', 240984),
(14, 'Sirenas', 'Taburete', 'Dr. Charas', '2016-11-18', 184250),
(15, 'Besos', 'El Canto Del Loco', 'Zapatillas', '2005', 145826),
(16, 'Caminando por la vida', 'Melendi', 'Que El Cielo Espere Sentao..', '2005', 211680),
(17, 'Zapatillas', 'El Canto Del Loco', 'Zapatillas', '2005', 172640),
(18, 'Todos Los Besos', 'Los Rebujitos', 'El Niño Pena', '2010-03-10', 239146),
(19, 'No Pide Tanto, Idiota', 'Maldita Nerea', 'Mira Dentro', '2014-10-06', 224280),
(20, 'Puede Ser (with Amaia Montero)', 'El Canto Del Loco, Amaia Montero', 'A Contracorriente', '2002-03-01', 181026),
(21, 'La Mujer de Verde', 'IZAL', 'Magia & Efectos Especiales', '2012-04-12', 304573),
(22, 'Marta, Sebas, Guille y los demás', 'Amaral', 'Pájaros En La Cabeza', '2005-03-14', 223186),
(23, 'Peter Pan', 'El Canto Del Loco', 'Personas', '2008', 259720),
(24, 'Partiendo la Pana', 'Estopa', 'Destrangis', '2001-10-23', 240466),
(25, 'Eres Tonto', 'El Canto Del Loco', 'Personas', '2008', 192426),
(26, 'Antes Que Ver El Sol', 'Coti, Dani Martín', 'Coti', '2003-01-01', 221626),
(27, 'Kisiera yo saber', 'Melendi', 'Mientras No Cueste Trabajo', '2006-11-13', 212693),
(28, 'Vino Tinto', 'Estopa', 'Destrangis', '2001-10-23', 198560),
(29, 'Mi Estrella Blanca', 'Fondo Flamenco', 'Las Cartas Sobre la Mesa', '2008-12-08', 278958),
(30, 'El universo sobre mí', 'Amaral', 'Pájaros En La Cabeza', '2005-03-14', 249680),
(31, 'Física o química', 'Despistaos', 'Lo que hemos vivido', '2008-10-14', 191826),
(32, 'Estoy enfermo (con Melendi)', 'Pignoise, Melendi', 'Cuestion de directo', '2009-06-18', 154226),
(33, 'Tal Como Eres', 'El Canto Del Loco', 'Zapatillas', '2005', 253266),
(34, 'Tu Calorro', 'Estopa', 'Estopa', '1999-10-18', 190626),
(35, 'Un violinista en tu tejado', 'Melendi', 'Curiosa La Cara De Tu Padre', '2008-09-16', 222720),
(36, 'El Secreto de las Tortugas', 'Maldita Nerea', 'Es un Secreto...No Se Lo Digas a Nadie', N'2009-05-07', 247840),
(37, 'Cuando me siento bien', 'Efecto Pasillo', 'Tiembla la tierra', '2015-12-20', 223680),
(38, '20 de Enero', 'La Oreja de Van Gogh', 'Lo Que Te Conte Mientras Te Hacias La Dormida', N'2003', 223000),
(39, 'Cuando Amanece', 'Estopa', 'Allenrok', '2008-02-22', 197920),
(40, 'Puedes Contar Conmigo', 'La Oreja de Van Gogh', 'Lo Que Te Conte Mientras Te Hacias La Dormida', N'2003', 236786),
(41, 'Cacho a Cacho', 'Estopa', 'Estopa', '1999-10-18', 148746),
(42, 'Quiero', 'Pignoise', 'Año Zero', '2010-04-26', 159773),
(43, 'Inmortal', 'La Oreja de Van Gogh', 'A las Cinco en el Astoria', '2008-09-30', 246400),
(44, 'Nada podra salvarte', 'Pignoise', 'Anunciado en Television', '2006-04-10', 220146),
(45, '11 RAZONES', 'Aitana', '11 RAZONES', '2020-12-10', 213179),
(46, 'Duele El Amor', 'Aleks Syntek, Ana Torroja', 'Mundo Lite', '2004-01-01', 275373),
(47, 'La promesa', 'Melendi', 'Un alumno más', '2014-11-25', 233040),
(48, 'Clima Tropical', 'Dani Fernández', 'Clima Tropical', '2021-04-23', 209614),
(49, 'Tu jardín con enanitos', 'Melendi', 'Lágrimas desordenadas', '2012-11-13', 236975),
(50, 'En Que Estrella Estara', 'Nena Daconte', 'He Perdido Los Zapatos', '2006-01-01', 140666),
(51, 'Cuerda Auxiliar', 'Besmaya', 'Cuerda Auxiliar', '2020-03-27', 161100),
(52, 'Pequeña Gran Revolución', 'IZAL', 'Copacabana', '2015-09-18', 275493),
(53, 'Copenhague', 'Vetusta Morla', 'Un Día en el Mundo', '2008-04-21', 303693),
(54, 'Don''t Go Yet', 'Camila Cabello', 'Don''t Go Yet', '2021-07-23', 164842),
(55, 'Volver a Disfrutar', 'El Canto Del Loco', 'Estados de Animo', '2003', 191346),
(56, '20 de abril', 'Celtas Cortos', 'Cuentame Un Cuento', '1991-04-17', 235333),
(57, 'Lo echamos a suertes', 'Ella Baila Sola', 'Ella Baila Sola', '1996', 237906),
(58, 'Me Pesan las Alas', 'Maldita Nerea', 'Bailarina', '2017-09-08', 192880),
(59, 'Frío', 'Dani Fernández', 'Frío', '2021-09-24', 221035),
(60, 'Consejo de Sabios', 'Vetusta Morla', 'Mismo Sitio, Distinto Lugar', '2017-11-09', 318280),
(61, 'Bailarina', 'Maldita Nerea', 'Bailarina', '2017-09-08', 224960),
(62, 'Niño Soldado', 'Ska-P', 'Que Corra La Voz', '2002-05-27', 220200),
(63, 'Nunca Te Olvidé', 'Morat', 'Nunca Te Olvidé', '2020-04-02', 211970),
(64, 'Sin miedo a nada (feat. Amaia Montero)', 'Alex Ubago, Amaia Montero', '¿Qué pides tú?', '2001-09-21', 310866),
(65, 'Que Te Quería', 'La Quinta Estacion', 'Sin Frenos', '2009', 229520),
(66, 'La noche me resbala', 'Señor Trepador', 'Aforismos invertebrados', '2006-06-05', 181839),
(67, 'Nunca Estarás Sola', 'Maldita Nerea', 'Mira Dentro', '2014-10-06', 262973),
(68, 'Mi Primer Día', 'Los Aslándticos', 'Aquí Y Ahora', '2017-09-29', 193113),
(69, '23 de Junio', 'Vetusta Morla', 'Mismo Sitio, Distinto Lugar', '2017-11-09', 207480),
(70, 'Cada dos minutos (con Rulo y la Contrabanda y Kutxi Romero)', 'Despistaos, Kutxi Romero, Rulo y la contrabanda', 'Vivir al reves', '2007-09-25', 192080),
(71, 'Te debo una canción', 'Shinova', 'Te debo una canción', '2020-09-18', 211491),
(72, 'Cosas de la Edad', 'Modestia Aparte', 'Cosas de la Edad', '1990-03-22', 173081);
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
