-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 14 2020 г., 16:39
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `estore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `new` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `desciption`, `img`, `category`, `sale`, `new`) VALUES
(1, 'Apple iPhone X 256 ГБ «серый космос»', 75990, 'Совершенно новый дисплей Super Retina с диагональю 5,8 дюйма, который удобно\r\nлежит в руке и потрясающие выглядит, — это и есть iPhone X.', 'iphone.jpg', 'Телефоны', NULL, 1),
(2, 'Apple iMac 27\" Retina 5K Core i5 3.8 ГГц, 8 ГБ, 2 ТБ Fusion Drive, Radeon Pro 580 8 ГБ', 164990, '\r\nНастольный компьютер, который погружает вас в контент. Буквально. Эта идея лежит\r\nв основе современного iMac — и сегодня она актуальна как никогда. Совершенно\r\nновые процессоры, инновационные графические технологии, передовые накопители\r\nи разъёмы с впечатляющей пропускной способностью — всё это новый iMac. А его\r\nдисплей Retina способен оживить любую картинку, ведь по яркости и качеству\r\nцветопередачи ему нет равных среди iMac. Работать на iMac теперь ещё интереснее\r\nи увлекательнее.\r\n', 'imac.jpg', 'Компьютеры', 1, NULL),
(3, '\r\n\r\n\r\nApple iPad (2018) Wi-Fi + Cellular 32 ГБ, «серый космос»', 34990, 'Давайте представим, что компьютер изобрели сегодня. Какой он? Очень мощный, чтобы справляться с любыми задачами. Невероятно портативный, чтобы носить его с собой повсюду. А ещё он настолько удобный, что им можно управлять, просто прикасаясь к экрану. Или с помощью клавиатуры. И даже карандашом.1  Другими словами, это не совсем компьютер. Это новый iPad.\r\n', 'ipad.jpg', 'Планшеты', 1, NULL),
(4, '\r\nApple MacBook Air 13\" Dual-Core i5 1,6 ГГц, 8 ГБ, 256 ГБ SSD, «серый космос»', 120990, 'Новый MacBook Air — ещё более тонкий и лёгкий, оснащён дисплеем Retina, клавиатурой нового поколения, трекпадом Force Touch и технологией Touch ID, которая защищает ваши данные и открывает доступ к ним только вам. Это самый экологичный Mac. Для его корпуса используется только переработанный алюминий.1 И это невероятно удобный MacBook Air, который справится с любыми задачами. \r\n', 'macbook.jpg', 'Ноутбуки', NULL, NULL),
(5, '\r\nApple Mac mini Core i5 3,0 ГГц, 8 ГБ, SSD 256 ГБ, Intel UHD Graphics 630\r\n', 91990, 'Mac mini — мощный настольный компьютер, контроллер для домашней автоматики, основа масштабных рендер?ферм. И многое, очень многое другое. Теперь Mac mini оснащён 4?ядерным или 6?ядерным процессором Intel восьмого поколения и графикой Intel UHD Graphics 630. А значит, у него ещё больше вычислительной мощности для выполнения ресурсоёмких задач. Что бы вы ни делали — от обработки звука с концерта до тестирования своего приложения для iOS, — Mac mini ускорит воплощение любой идеи.\r\n\r\n', 'mac-mini.jpg', 'Компьютеры', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
