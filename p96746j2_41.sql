-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 13 2022 г., 14:43
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `p96746j2_41`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Artists`
--
-- Создание: Май 13 2022 г., 11:00
-- Последнее обновление: Май 13 2022 г., 11:16
--

DROP TABLE IF EXISTS `Artists`;
CREATE TABLE `Artists` (
  `id_Artists` int(11) NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `Sex` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Artists`
--

INSERT INTO `Artists` (`id_Artists`, `FIO`, `Sex`) VALUES
(1, 'Иванов Евгений Юрьевич', 'Мужской'),
(2, 'Парамонов Дмитрий Сергеевич', 'Мужской'),
(3, 'Александров Аленсандр Александрович', 'Мужской'),
(4, 'Филатова Елизавета Алексеевна', 'Женский'),
(5, 'Филатова Елизавета Алексеевна', 'Женский'),
(6, 'Кареева Дарья Андреевна', 'Женский'),
(7, 'Жукова Виктория Владимировна', 'Женский'),
(8, 'Гордеев Владислав Алексеевич', 'Мужской'),
(9, 'Родионов Денис Владимирович', 'Мужской'),
(10, 'Лабгаева Екатерина Дмитриевна', 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--
-- Создание: Май 13 2022 г., 11:00
--

DROP TABLE IF EXISTS `Clients`;
CREATE TABLE `Clients` (
  `id_Client` int(11) NOT NULL,
  `FIO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Genres`
--
-- Создание: Май 13 2022 г., 11:00
--

DROP TABLE IF EXISTS `Genres`;
CREATE TABLE `Genres` (
  `id_Genres` int(11) NOT NULL,
  `Name_Genres` int(11) NOT NULL,
  `Shooter` int(11) NOT NULL,
  `Romance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Performance`
--
-- Создание: Май 13 2022 г., 11:00
--

DROP TABLE IF EXISTS `Performance`;
CREATE TABLE `Performance` (
  `id_Performance` int(11) NOT NULL,
  `Name_Performance` int(11) NOT NULL,
  `View_Performance` int(11) NOT NULL,
  `Supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Playbill`
--
-- Создание: Май 13 2022 г., 11:00
--

DROP TABLE IF EXISTS `Playbill`;
CREATE TABLE `Playbill` (
  `id_Theathre` int(11) NOT NULL,
  `id_Performance` int(11) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Theatre`
--
-- Создание: Май 13 2022 г., 11:00
--

DROP TABLE IF EXISTS `Theatre`;
CREATE TABLE `Theatre` (
  `id_Theatre` int(11) NOT NULL,
  `Name_Theatre` int(11) NOT NULL,
  `View_Theatre` int(11) NOT NULL,
  `Director_Teathre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Tickets`
--
-- Создание: Май 13 2022 г., 11:00
-- Последнее обновление: Май 13 2022 г., 11:30
--

DROP TABLE IF EXISTS `Tickets`;
CREATE TABLE `Tickets` (
  `id_Tickets` int(11) NOT NULL,
  `Data` datetime NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Tickets`
--

INSERT INTO `Tickets` (`id_Tickets`, `Data`, `Price`) VALUES
(1, '2010-03-20 03:00:00', 2500),
(2, '2011-03-20 03:00:00', 1500),
(3, '2011-03-20 03:00:00', 1500),
(4, '2012-03-20 03:00:00', 3000),
(5, '2013-03-20 03:00:00', 2400),
(6, '2014-03-20 03:00:00', 1800),
(7, '2015-03-20 03:00:00', 900),
(8, '2016-03-20 03:00:00', 2700),
(9, '2017-03-20 03:00:00', 3100),
(10, '2018-03-20 03:00:00', 3600),
(11, '2019-03-20 03:00:00', 1900),
(12, '2020-03-20 03:00:00', 2600),
(13, '2021-03-20 03:00:00', 1100);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Artists`
--
ALTER TABLE `Artists`
  ADD PRIMARY KEY (`id_Artists`);

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id_Client`);

--
-- Индексы таблицы `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`id_Genres`),
  ADD KEY `Genres_fk0` (`Name_Genres`),
  ADD KEY `Genres_fk1` (`Shooter`),
  ADD KEY `Genres_fk2` (`Romance`);

--
-- Индексы таблицы `Performance`
--
ALTER TABLE `Performance`
  ADD PRIMARY KEY (`id_Performance`);

--
-- Индексы таблицы `Playbill`
--
ALTER TABLE `Playbill`
  ADD PRIMARY KEY (`id_Theathre`);

--
-- Индексы таблицы `Theatre`
--
ALTER TABLE `Theatre`
  ADD PRIMARY KEY (`id_Theatre`);

--
-- Индексы таблицы `Tickets`
--
ALTER TABLE `Tickets`
  ADD PRIMARY KEY (`id_Tickets`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Artists`
--
ALTER TABLE `Artists`
  MODIFY `id_Artists` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id_Client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Genres`
--
ALTER TABLE `Genres`
  MODIFY `id_Genres` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Performance`
--
ALTER TABLE `Performance`
  MODIFY `id_Performance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Playbill`
--
ALTER TABLE `Playbill`
  MODIFY `id_Theathre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Theatre`
--
ALTER TABLE `Theatre`
  MODIFY `id_Theatre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Tickets`
--
ALTER TABLE `Tickets`
  MODIFY `id_Tickets` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `Clients_fk0` FOREIGN KEY (`id_Client`) REFERENCES `Tickets` (`id_Tickets`);

--
-- Ограничения внешнего ключа таблицы `Genres`
--
ALTER TABLE `Genres`
  ADD CONSTRAINT `Genres_fk0` FOREIGN KEY (`Name_Genres`) REFERENCES `Tickets` (`id_Tickets`),
  ADD CONSTRAINT `Genres_fk1` FOREIGN KEY (`Shooter`) REFERENCES `Tickets` (`id_Tickets`),
  ADD CONSTRAINT `Genres_fk2` FOREIGN KEY (`Romance`) REFERENCES `Tickets` (`id_Tickets`);

--
-- Ограничения внешнего ключа таблицы `Performance`
--
ALTER TABLE `Performance`
  ADD CONSTRAINT `Performance_fk0` FOREIGN KEY (`id_Performance`) REFERENCES `Playbill` (`id_Theathre`);

--
-- Ограничения внешнего ключа таблицы `Playbill`
--
ALTER TABLE `Playbill`
  ADD CONSTRAINT `Playbill_fk0` FOREIGN KEY (`id_Theathre`) REFERENCES `Tickets` (`id_Tickets`);

--
-- Ограничения внешнего ключа таблицы `Theatre`
--
ALTER TABLE `Theatre`
  ADD CONSTRAINT `Theatre_fk0` FOREIGN KEY (`id_Theatre`) REFERENCES `Clients` (`id_Client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


1) SELECT `Data`, `FIO` FROM `Tickets`,`Artists` WHERE 1
2) SELECT `FIO`, `Price` FROM `Tickets`, `Artists` WHERE `Price` > 10