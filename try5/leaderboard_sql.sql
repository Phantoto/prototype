-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 24 2020 г., 08:13
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `leaderboard_sql`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gumanitar`
--

CREATE TABLE `gumanitar` (
  `subject` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `score` int(255) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gumanitar`
--

INSERT INTO `gumanitar` (`subject`, `name`, `score`, `type_id`) VALUES
('История', 'Вася', 1000, 1),
('История', 'Vanya', 100, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `questions_gum`
--

CREATE TABLE `questions_gum` (
  `id_type` int(255) NOT NULL,
  `answer` int(255) NOT NULL,
  `player_name` varchar(355) NOT NULL,
  `score` int(255) NOT NULL,
  `subject` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions_gum`
--

INSERT INTO `questions_gum` (`id_type`, `answer`, `player_name`, `score`, `subject`) VALUES
(1, 1, '', 0, 'история');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gumanitar`
--
ALTER TABLE `gumanitar`
  ADD PRIMARY KEY (`type_id`);

--
-- Индексы таблицы `questions_gum`
--
ALTER TABLE `questions_gum`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gumanitar`
--
ALTER TABLE `gumanitar`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `questions_gum`
--
ALTER TABLE `questions_gum`
  MODIFY `id_type` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
