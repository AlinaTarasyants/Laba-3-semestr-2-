-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 18 2021 г., 08:26
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `ID_Game` int(11) NOT NULL,
  `date_game` date NOT NULL,
  `place` varchar(40) NOT NULL,
  `score` varchar(10) NOT NULL,
  `FID_Team1` int(11) NOT NULL,
  `FID_Team2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`ID_Game`, `date_game`, `place`, `score`, `FID_Team1`, `FID_Team2`) VALUES
(1, '2020-11-22', 'Stadion 1', '1-0', 1, 2),
(2, '2020-10-22', 'Stadion 2', '2-0', 2, 3),
(3, '2020-09-02', 'Stadion 3', '4-2', 3, 4),
(4, '2020-12-10', 'Stadion 4', '0-2', 4, 5),
(5, '2020-08-05', 'Stadion 1', '1-1', 5, 6),
(6, '2020-11-11', 'Stadion 5', '0-0', 6, 1),
(7, '2020-12-02', 'Stadion1', '1-0', 3, 5),
(8, '2020-10-09', 'Stadion 5', '5-9', 1, 4),
(9, '2020-11-09', 'Stadion 2', '2-2', 2, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `player`
--

CREATE TABLE `player` (
  `ID_Player` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `FID_Team` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `player`
--

INSERT INTO `player` (`ID_Player`, `Name`, `FID_Team`) VALUES
(1, 'Player 1', 1),
(2, 'Player 2', 1),
(3, 'Player 3', 1),
(4, 'Player 4', 1),
(5, 'Player 5', 1),
(6, 'Player 6', 1),
(7, 'Player 7', 1),
(8, 'Player 8', 1),
(9, 'Player 9', 1),
(10, 'Player 10', 1),
(11, 'Player 11', 1),
(13, 'Player 1', 2),
(14, 'Player 2', 2),
(15, 'Player 3', 2),
(16, 'Player 4', 2),
(17, 'Player 5', 2),
(18, 'Player 6', 2),
(19, 'Player 7', 2),
(20, 'Player 8', 2),
(21, 'Player 9', 2),
(22, 'Player 10', 2),
(23, 'Player 11', 2),
(24, 'Player 1', 3),
(25, 'Player 2', 3),
(26, 'Player 3', 3),
(27, 'Player 4', 3),
(28, 'Player 5', 3),
(29, 'Player 6', 3),
(30, 'Player 7', 3),
(31, 'Player 8', 3),
(32, 'Player 9', 3),
(33, 'Player 10', 3),
(34, 'Player 11', 3),
(35, 'Player 1', 4),
(36, 'Player 2', 4),
(37, 'Player 3', 4),
(38, 'Player 4', 4),
(39, 'Player 5', 4),
(40, 'Player 6', 4),
(41, 'Player 7', 4),
(42, 'Player 8', 4),
(43, 'Player 9', 4),
(44, 'Player 10', 4),
(45, 'Player 11', 4),
(46, 'Player 1', 5),
(47, 'Player 2', 5),
(48, 'Player 3', 5),
(49, 'Player 4', 5),
(50, 'Player 5', 5),
(51, 'Player 6', 5),
(52, 'Player 7', 5),
(53, 'Player 8', 5),
(54, 'Player 9', 5),
(55, 'Player 10', 5),
(56, 'Player 11', 5),
(57, 'Player 1', 6),
(58, 'Player 2', 6),
(59, 'Player 3', 6),
(60, 'Player 4', 6),
(61, 'Player 5', 6),
(62, 'Player 6', 6),
(63, 'Player 7', 6),
(64, 'Player 8', 6),
(65, 'Player 9', 6),
(66, 'Player 10', 6),
(67, 'Player 11', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `ID_Team` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `league` varchar(60) NOT NULL,
  `coach` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`ID_Team`, `name`, `league`, `coach`) VALUES
(1, 'Barcelona', 'La League', 'John'),
(2, 'Real Madrid', 'Spanish League', 'Vasya'),
(3, 'Juventus', 'Italic League', 'Marcello'),
(4, 'Athletico Madrid', 'La League', 'Yuri'),
(5, 'Parma', 'Italic League', 'Andrew'),
(6, 'Grenada', 'Spanish League', 'Petya');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID_Game`);

--
-- Индексы таблицы `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID_Player`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID_Team`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `game`
--
ALTER TABLE `game`
  MODIFY `ID_Game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `player`
--
ALTER TABLE `player`
  MODIFY `ID_Player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `team`
--
ALTER TABLE `team`
  MODIFY `ID_Team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
