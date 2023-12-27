-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 27 2023 г., 13:01
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc-framework`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`) VALUES
(1, 'Karabakh MP: Russian cargoes haven’t reached Artsakh, Azerbaijan violates arrangement', 'The Russian cargoes have not reached Artsakh (Nagorno-Karabakh) through the city of Askeran. Davit Galstyan, head of the opposition Justice Faction of the Artsakh National Assembly, told Armenian News-NEWS.am about this.\r\n\r\nGalstyan said that Azerbaijan creates obstacles for goods to reach Artsakh, and, according to him, Azerbaijan violates not only that, but also many other arrangements.\r\n\r\n\"According to Telegram channels, the cargo is now in Barda city [of Azerbaijan]. The fact that Azerbaijan obstructs the resolution of this crisis situation in every possible way indicates that Azerbaijan has not given up its genocidal actions and is taking all its steps in that direction,\" he said.'),
(2, 'Russia discussing with Tehran, Baku possibility of supplying electricity via Azerbaijan to Armenia, then to Iran', 'Russian Energy Minister Nikolai Shulginov announced that the Kremlin is negotiating with Tehran and Baku on the possibility of exporting 300 MW of electricity through Azerbaijan to Armenia and then to Iran, using the existing infrastructure, Prime news agency reports.\r\n\r\n\"Now we are just looking at the possibility of supplying electricity through the territory of Azerbaijan to Armenia, from there to Iran and, possibly, to other countries as well. In the first phase, we are reaching an agreement with Tehran and Baku to use the existing infrastructure without new construction,\" Shulginov noted.\r\n\r\nHe added that all sides of the respective negotiations are interested in this project.\r\n\r\nEarlier, the Minister of Energy of Russia and the head of the Ministry of Energy of Kazakhstan, Almasadam Satkaliyev, signed an agreement to increase the amount of oil transit to 10 million tons per year by the end of 2033.\r\n\r\nAlso, the parties discussed cooperation in electricity. Accordingly, Moscow is ready to implement joint projects in the construction and modernization of energy facilities, as well as production and supply of respective equipment.\r\n\r\n'),
(3, 'USAID chief: Humanitarian situation in Nagorno-Karabakh rapidly deteriorating\r\n', 'The humanitarian situation in Nagorno-Karabakh (NK) is rapidly deteriorating. Samantha Power, Administrator of the United States Agency for International Development (USAID), noted this on X—former Twitter. '),
(4, 'French ambassador again dismisses disinformation about Armenia', 'Olivier Decottignies, the French ambassador to Armenia, dismissed the disinformation disseminated on the internet that as if the French embassy is asking its citizens to stay away from Syunik Province of Armenia.\r\n“Nothing new there - Our travel advisory for Armenia was updated for the last time on July, 18, 2023. And the Syunik region of Armenia is included in our map of Armenia - as it should,” the French diplomat wrote on X—former Twitter.\r\n\r\nThe French ambassador to Armenia last time had dismissed such disinformation on September 7, calling it fake news.'),
(5, 'Blinken: US is deeply concerned about rapidly deteriorating humanitarian situation in Karabakh', 'The United States is deeply concerned about the rapidly deteriorating humanitarian situation in Nagorno-Karabakh. This is noted in a press statement by US Secretary of State Antony Blinken.\r\n“We note that humanitarian supplies are positioned near both the Lachin and Aghdam routes, and we repeat our call for the immediate and simultaneous opening of both corridors to allow passage of desperately needed humanitarian supplies to the men, women, and children in Nagorno-Karabakh. We also urge leaders against taking any actions that raise tensions or distract from this goal. The use of force to resolve disputes is unacceptable.\r\n“In light of the recent increase in tensions in the South Caucasus, the United States will continue to strongly support efforts by Armenia and Azerbaijan to resolve outstanding issues through direct dialogue, with the aim of achieving a dignified and enduring peace. We reiterate that any peace agreement between Armenia and Azerbaijan must protect the rights and security of the residents of Nagorno-Karabakh. We also encourage dialogue between Baku and residents of Nagorno-Karabakh.\r\n\r\n“The United States further reaffirms the only way forward is peace, dialogue, and the normalization of relations between Armenia and Azerbaijan on the basis of mutual respect for each other’s sovereignty and territorial integrity,” the aforesaid press statement added.\r\n\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`) VALUES
(1, 'Karen'),
(2, 'Artak'),
(3, 'Hamo'),
(4, 'Vaxo'),
(5, 'Arsen');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
