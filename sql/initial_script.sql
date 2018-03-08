--
-- Table: console
--

CREATE TABLE IF NOT EXISTS `console` (
`id_console` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nom_console` varchar(255) NOT NULL
) ENGINE=InnoDB;

--
-- Inserting data into console
--

INSERT INTO `console` (`id_console`, `nom_console`) VALUES
(1, 'NES'),
(2, 'Megadrive'),
(3, 'Nintendo 64'),
(4, 'GameCube'),
(5, 'Xbox'),
(6, 'PC'),
(7, 'SuperNES'),
(8, 'PS2'),
(9, 'GBA'),
(10, 'PS'),
(11, 'Gameboy'),
(12, 'Dreamcast')
;

-- --------------------------------------------------------

--
-- Table jeux_video
--

CREATE TABLE IF NOT EXISTS `jeux_video` (
`ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nom` varchar(255) NOT NULL,
  `prix` double NOT NULL DEFAULT '0',
  `nbre_joueurs_max` int(11) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL,
  `id_proprietaire` int(11) NOT NULL,
  `id_console` int(11) NOT NULL,
  `date_enregistrement` datetime NOT NULL
) ENGINE=InnoDB
;

--
-- Inserting data into jeux_video
--

INSERT INTO `jeux_video` (`ID`, `nom`, `prix`, `nbre_joueurs_max`, `commentaires`, `id_proprietaire`, `id_console`, `date_enregistrement`) VALUES
(1, 'Super Mario Bros', 4, 1, 'Un jeu d''anthologie !', 1, 1, '2005-01-24 10:56:40'),
(2, 'Sonic', 2, 1, 'Pour moi, le meilleur jeu du monde !', 2, 2, '2011-04-05 15:15:32'),
(3, 'Zelda : ocarina of time', 15, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours', 1, 3, '1974-11-08 10:58:58'),
(4, 'Mario Kart 64', 25, 4, 'Un excellent jeu de kart !', 1, 3, '2014-11-09 02:53:14'),
(5, 'Super Smash Bros Melee', 55, 4, 'Un jeu de baston délirant !', 3, 4, '1987-03-24 23:31:05'),
(6, 'Dead or Alive', 60, 4, 'Le plus beau jeu de baston jamais créé', 2, 5, '2017-10-24 15:26:00'),
(7, 'Dead or Alive Xtreme Beach Volley Ball', 60, 4, 'Un jeu de beach volley de toute beauté o_O', 2, 5, '2013-01-07 08:53:16'),
(8, 'Enter the Matrix', 45, 1, 'Plutôt bof comme jeu, mais ça complète bien le film', 3, 6, '1993-07-13 11:54:22'),
(9, 'Max Payne 2', 50, 1, 'Très réaliste, une sorte de film noir sur fond d''histoire d''amour. A essayer !', 3, 6, '2006-09-20 17:07:33'),
(10, 'Yoshi''s Island', 6, 1, 'Le paradis des Yoshis :o)', 1, 7, '1986-10-05 20:25:57'),
(11, 'Commandos 3', 44, 12, 'Un bon jeu d''action où on dirige un commando pendant la 2ème guerre mondiale !', 1, 6, '1991-10-08 18:02:37'),
(12, 'Final Fantasy X', 40, 1, 'Encore un Final Fantasy mais celui la est encore plus beau !', 2, 8, '1980-06-08 15:41:19'),
(13, 'Pokemon Rubis', 44, 4, 'Pika-Pika-chu !!!', 1, 9, '2004-12-30 07:34:16'),
(14, 'Starcraft', 19, 8, 'Le meilleur jeux pc de tout les temps !', 3, 6, '2017-06-06 15:18:38'),
(15, 'Grand Theft Auto 3', 30, 1, 'Comme dans les autres Gta on ecrase tout le monde :) .', 3, 8, '2005-11-30 21:21:39'),
(16, 'Homeworld 2', 45, 6, 'Superbe ! o_O', 3, 6, '2007-04-15 15:53:09'),
(17, 'Aladin', 10, 1, 'Comme le dessin Animé !', 2, 7, '2000-07-24 21:06:49'),
(18, 'Super Mario Bros 3', 10, 2, 'Le meilleur Mario selon moi.', 3, 7, '2010-12-15 06:55:26'),
(19, 'SSX 3', 56, 2, 'Un très bon jeu de snow !', 1, 5, '1986-11-02 18:48:01'),
(20, 'Star Wars : Jedi outcast', 33, 1, 'Encore un jeu sur star-wars où on se prend pour Luke Skywalker !', 2, 5, '1979-06-13 14:29:19'),
(21, 'Actua Soccer 3', 30, 2, 'Un jeu de foot assez bof ...', 2, 10, '2014-11-05 23:18:02'),
(22, 'Time Crisis 3', 40, 1, 'Un troisième volet efficace mais pas vraiment surprenant', 1, 8, '1973-05-26 22:04:01'),
(23, 'X-FILES', 25, 1, 'Un jeu censé ressembler a la série mais assez raté ...', 2, 10, '1996-10-30 07:11:03'),
(24, 'Soul Calibur 2', 54, 1, 'Un jeu bien axé sur le combat', 2, 5, '1997-09-13 15:14:27'),
(25, 'Diablo', 20, 1, 'Comme sur PC mais la c''est sur un ecran de télé :) !', 1, 10, '1979-11-23 11:25:08'),
(26, 'Street Fighter 2', 10, 2, 'Le célèbre jeu de combat !', 2, 2, '1984-06-27 03:37:53'),
(27, 'Gundam Battle Assault 2', 29, 1, 'Jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement', 1, 10, '2012-10-02 02:54:48'),
(28, 'Spider-Man', 15, 1, 'Vivez l''aventure de l''homme araignée', 1, 2, '1995-12-08 08:56:51'),
(29, 'Midtown Madness 3', 59, 6, 'Dans la suite des autres versions de Midtown Madness', 3, 5, '1971-06-01 14:00:41'),
(30, 'Tetris', 5, 1, 'Qui ne connait pas ? ', 1, 11, '1995-07-07 21:43:10'),
(31, 'The Rocketeer', 2, 1, 'Un super un film et un jeu de m*rde ...', 3, 1, '1997-01-30 10:05:02'),
(32, 'Pro Evolution Soccer 3', 59, 2, 'Un petit jeu de foot sur PS2', 2, 8, '1980-09-28 22:01:42'),
(33, 'Ice Hockey', 7, 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)', 3, 1, '1990-08-05 21:08:55'),
(34, 'Sydney 2000', 15, 2, 'Les JO de Sydney dans votre salon !', 1, 12, '1992-08-13 21:25:31'),
(35, 'NBA 2k', 12, 2, 'A votre avis :p ?', 2, 12, '1973-03-08 03:26:51'),
(36, 'Aliens Versus Predator : Extinction', 20, 2, 'Un shoot''em up pour pc', 3, 8, '2014-04-21 06:28:02'),
(37, 'Crazy Taxi', 11, 1, 'Conduite de taxi en folie !', 1, 12, '1989-06-23 12:01:24'),
(38, 'Le Maillon Faible', 10, 1, 'Le jeu de l''émission', 4, 8, '1982-08-06 03:58:27'),
(39, 'FIFA 64', 25, 2, 'Le premier jeu de foot sur la N64 =) !', 3, 3, '1974-07-19 04:48:49'),
(40, 'Qui Veut Gagner Des Millions', 10, 1, 'Le jeu de l''émission', 1, 8, '2003-01-25 03:24:15'),
(41, 'Monopoly', 21, 4, 'Bheuuu le monopoly sur N64 !', 5, 3, '1977-04-29 10:51:20'),
(42, 'Taxi 3', 19, 4, 'Un jeu de voiture sur le film', 6, 8, '2003-09-03 17:34:13'),
(43, 'Indiana Jones Et Le Tombeau De L''Empereur', 25, 1, 'Notre aventurier préféré est de retour !!!', 1, 8, '1972-01-08 12:33:39'),
(44, 'F-ZERO', 25, 4, 'Un super jeu de course futuriste !', 4, 9, '1975-04-29 14:35:51'),
(45, 'Harry Potter Et La Chambre Des Secrets', 30, 1, 'Abracadabra !! Le célebre magicien est de retour !', 4, 5, '1990-07-25 11:19:07'),
(46, 'Half-Life', 15, 32, 'L''autre meilleur jeu de tout les temps (surtout ses mods).', 6, 6, '2008-09-19 18:34:02'),
(47, 'Myst III Exile', 49, 1, 'Un jeu de réflexion', 5, 5, '2005-08-29 06:24:09'),
(48, 'Wario World', 40, 4, 'Wario vs Mario ! Qui gagnera ! ?', 5, 4, '1984-01-07 08:04:38'),
(49, 'Rollercoaster Tycoon', 29, 1, 'Jeu de gestion d''un parc d''attraction', 1, 5, '1981-03-24 12:26:17'),
(50, 'Splinter Cell', 53, 1, 'Jeu magnifique !', 2, 5, '1984-02-01 12:58:16'),
(51, 'JEU SANS CONSOLE', 11.3, 10, 'JEU qui n''a été dévelippé sur aucune console', 2, 0, '2018-02-21 06:20:20')
;

-- --------------------------------------------------------

--
-- Table proprietaire
--

CREATE TABLE IF NOT EXISTS `proprietaire` (
`id_proprietaire` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nom_proprietaire` varchar(255) NOT NULL
) ENGINE=InnoDB;

--
-- Inserting data into proprietaire
--

INSERT INTO `proprietaire` (`id_proprietaire`, `nom_proprietaire`) VALUES
(1, 'Florent'),
(2, 'Patrick'),
(3, 'Michel'),
(4, 'Mathieu'),
(5, 'Sebastien'),
(6, 'Corentin')
;
