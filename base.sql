-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 11 août 2021 à 18:39
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fantastic`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_aircraft', 'Aircraft Dealer', 1),
('society_ambulance', 'Ambulance', 1),
('society_army', 'Army', 1),
('society_autoecole', 'Auto Ecole', 1),
('society_barbier', 'Barbier', 1),
('society_bav', 'Bav', 1),
('society_biker', 'Concessionnaire Moto', 1),
('society_bowling', 'bowling', 1),
('society_brasseur', 'Brasseur', 1),
('society_brinks', 'Brinks', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_comedy', 'Comedy', 1),
('society_crucial', 'crucial', 1),
('society_cuisinier', 'cuisinier', 1),
('society_depanneur', 'Mécano', 1),
('society_fib', 'Fib', 1),
('society_fueler', 'Raffineur', 1),
('society_gouv', 'Gouvernement', 1),
('society_mecano', 'Mécano', 1),
('society_mechanic', 'Mécano', 1),
('society_nightclub', 'Nightclub', 1),
('society_pizza', 'pizza', 1),
('society_police', 'Police', 1),
('society_psy', 'Psychologue', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_aircraft', 0, NULL),
(2, 'society_ambulance', 0, NULL),
(3, 'society_army', 0, NULL),
(4, 'society_autoecole', 0, NULL),
(5, 'society_barbier', 0, NULL),
(6, 'society_bav', 0, NULL),
(7, 'society_biker', 0, NULL),
(8, 'society_bowling', 0, NULL),
(9, 'society_brasseur', 0, NULL),
(10, 'society_brinks', 0, NULL),
(11, 'society_cardealer', 0, NULL),
(12, 'society_comedy', 0, NULL),
(13, 'society_crucial', 0, NULL),
(14, 'society_cuisinier', 0, NULL),
(15, 'society_depanneur', 0, NULL),
(16, 'society_fib', 0, NULL),
(17, 'society_fueler', 150, NULL),
(18, 'society_gouv', 0, NULL),
(19, 'society_mecano', 0, NULL),
(20, 'society_mechanic', 0, NULL),
(21, 'society_nightclub', 0, NULL),
(22, 'society_pizza', 0, NULL),
(23, 'society_police', 0, NULL),
(24, 'society_psy', 0, NULL),
(25, 'society_taxi', 0, NULL),
(26, 'society_unicorn', 0, NULL),
(27, 'society_vigne', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('parcelle', 'Parcelle', 0),
('society_aircraft', 'Concesionnaire', 1),
('society_ambulance', 'Ambulance', 1),
('society_army', 'Army', 1),
('society_autoecole', 'Auto Ecole', 1),
('society_barbier', 'Barbier', 1),
('society_bav', 'Bav', 1),
('society_biker', 'Concesionnaire Moto', 1),
('society_bowling', 'bowling', 1),
('society_bowling_fridge', 'bowling (frigo)', 1),
('society_brasseur', 'Brasseur', 1),
('society_brinks', 'Brinks', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_comedy', 'Comedy', 1),
('society_comedy_fridge', 'Comedy (frigo)', 1),
('society_crucial', 'crucial', 1),
('society_crucial_fridge', 'crucial (frigo)', 1),
('society_cuisinier', 'cuisinier', 1),
('society_depanneur', 'Mécano', 1),
('society_fib', 'Fib', 1),
('society_fueler', 'Raffineur', 1),
('society_gouv', 'Gouvernement', 1),
('society_mecano', 'Mécano', 1),
('society_mechanic', 'Mécano', 1),
('society_nightclub', 'Nightclub', 1),
('society_nightclub_fridge', 'Nightclub (fridge)', 1),
('society_pizza_fridge', 'cuisine (frigo)', 1),
('society_police', 'Police', 1),
('society_psy', 'Psychologue', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `aircraft_avion`
--

CREATE TABLE `aircraft_avion` (
  `id` int(11) NOT NULL,
  `avion` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE `avion` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`name`, `model`, `price`, `category`) VALUES
('Besra', 'besra', 780000, 'avion'),
('Dodo', 'dodo', 700000, 'avion'),
('Duster', 'duster', 140000, 'avion'),
('Frogger', 'frogger', 300000, 'helico'),
('Jet (21m)', 'jet', 970000000, 'avion'),
('Luxor', 'luxor', 900000, 'avion'),
('Mallard', 'mallard', 380000, 'avion'),
('Mammatus', 'mammatus', 470000, 'avion'),
('Maverick', 'maverick', 230000, 'helico'),
('Miljet', 'miljet', 987000, 'avion'),
('Molotok', 'molotok', 1870000, 'avion'),
('Nimbus', 'nimbus', 800000, 'avion'),
('Nokota', 'nokota', 999999, 'avion'),
('Pyro', 'pyro', 797840, 'avion'),
('Drone', 'rcmavic', 378000, 'avion'),
('Shamal', 'shamal', 890000, 'avion'),
('Skylift', 'skylift', 500000, 'helico'),
('Sparrow', 'sparrow', 680000, 'helico'),
('Starling', 'starling', 1787770, 'avion'),
('SuperVolito', 'superVolito', 400000, 'helico'),
('Swift', 'swift', 890000, 'helico'),
('Velum', 'velum', 468000, 'avion'),
('Vestra', 'vestra', 390000, 'avion'),
('Volatus', 'volatus', 990000, 'helico');

-- --------------------------------------------------------

--
-- Structure de la table `avion_categories`
--

CREATE TABLE `avion_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avion_categories`
--

INSERT INTO `avion_categories` (`name`, `label`) VALUES
('avion', 'Avion');

-- --------------------------------------------------------

--
-- Structure de la table `avion_sold`
--

CREATE TABLE `avion_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `biker`
--

CREATE TABLE `biker` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `biker`
--

INSERT INTO `biker` (`id`, `name`, `model`, `price`, `category`) VALUES
(47, '690R', '690r', 380000, 'moto'),
(48, 'Akuma', 'AKUMA', 7500, 'motorcycles'),
(49, 'Avarus', 'avarus', 18000, 'motorcycles'),
(50, 'Bagger', 'bagger', 13500, 'motorcycles'),
(51, 'Bati 801', 'bati', 12000, 'motorcycles'),
(52, 'Bati 801RR', 'bati2', 19000, 'motorcycles'),
(53, 'BF400', 'bf400', 6500, 'motorcycles'),
(54, 'BMX (velo)', 'bmx', 160, 'motorcycles'),
(55, 'Carbon RS', 'carbonrs', 18000, 'motorcycles'),
(56, 'Chimera', 'chimera', 38000, 'motorcycles'),
(57, 'Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
(58, 'Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
(59, 'Daemon', 'daemon', 11500, 'motorcycles'),
(60, 'Daemon High', 'daemon2', 13500, 'motorcycles'),
(61, 'Defiler', 'defiler', 9800, 'motorcycles'),
(62, 'Diablous', 'diablous', 60000, 'motorcycles'),
(63, 'Diablous Custom', 'diablous2', 100000, 'motorcycles'),
(64, 'Double T', 'double', 28000, 'motorcycles'),
(65, 'Enduro', 'enduro', 5500, 'motorcycles'),
(66, 'Esskey', 'esskey', 4200, 'motorcycles'),
(67, 'Faggio', 'faggio', 1900, 'motorcycles'),
(68, 'Vespa', 'faggio2', 2800, 'motorcycles'),
(69, 'Fcr', 'fcr', 40000, 'motorcycles'),
(70, 'Fcr Custom', 'fcr2', 70000, 'motorcycles'),
(71, 'Fixter (velo)', 'fixter', 225, 'motorcycles'),
(72, 'Gargoyle', 'gargoyle', 16500, 'motorcycles'),
(73, 'Hakuchou', 'hakuchou', 31000, 'motorcycles'),
(74, 'Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
(75, 'Hexer', 'hexer', 12000, 'motorcycles'),
(76, 'Innovation', 'innovation', 23500, 'motorcycles'),
(77, 'KTM', 'ktmsm', 280000, 'moto'),
(78, 'Manchez', 'manchez', 5300, 'motorcycles'),
(79, 'Nemesis', 'nemesis', 5800, 'motorcycles'),
(80, 'Nightblade', 'nightblade', 35000, 'motorcycles'),
(81, 'Ninja2', 'ninjah2', 300000, 'moto'),
(82, 'PCJ-600', 'pcj', 6200, 'motorcycles'),
(83, 'Ruffian', 'ruffian', 6800, 'motorcycles'),
(84, 'Sanchez', 'sanchez', 5300, 'motorcycles'),
(85, 'Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
(86, 'Sanctus', 'sanctus', 25000, 'motorcycles'),
(87, 'Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
(88, 'Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
(89, 'Sovereign', 'sovereign', 22000, 'motorcycles'),
(90, 'Spirit', 'spirit', 30000, 'moto'),
(91, 'Spitro', 'spitro', 20000, 'moto'),
(92, 'Thrust', 'thrust', 24000, 'motorcycles'),
(93, 'Tmax', 'tmax', 100000, 'moto'),
(94, 'Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
(95, 'Vader', 'vader', 7200, 'motorcycles'),
(96, 'Vortex', 'vortex', 9800, 'motorcycles'),
(97, 'Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
(98, 'Zombie', 'zombiea', 9500, 'motorcycles'),
(99, 'Zombie Luxuary', 'zombieb', 12000, 'motorcycles');

-- --------------------------------------------------------

--
-- Structure de la table `biker_categories`
--

CREATE TABLE `biker_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `biker_categories`
--

INSERT INTO `biker_categories` (`name`, `label`) VALUES
('motorcycles', 'Motos');

-- --------------------------------------------------------

--
-- Structure de la table `biker_sold`
--

CREATE TABLE `biker_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `biker_vehicles`
--

CREATE TABLE `biker_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bought_houses`
--

CREATE TABLE `bought_houses` (
  `houseid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bourse`
--

CREATE TABLE `bourse` (
  `item` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `difference` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bourse`
--

INSERT INTO `bourse` (`item`, `libelle`, `price`, `difference`) VALUES
('orange_pooch', 'Jus d\'orange', 20, 20),
('stone_pooch', 'Fer', 23, 23),
('sable_pooch', 'Verre', 18, 18),
('pomme_pooch', 'Jus de pomme', 21, 21),
('bois_pooch', 'Planche de bois', 16, 16);

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `car_parking`
--

CREATE TABLE `car_parking` (
  `id` int(10) NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  `parking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `coffres`
--

CREATE TABLE `coffres` (
  `identifier` varchar(255) NOT NULL,
  `Minutes` int(10) NOT NULL DEFAULT 0,
  `Hours` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `coffres`
--

INSERT INTO `coffres` (`identifier`, `Minutes`, `Hours`) VALUES
('xbl:2535465636391032', 0, 0),
('xbl:2535467603121499', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `criminal_records`
--

CREATE TABLE `criminal_records` (
  `id` int(11) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `officer_id` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL,
  `fine` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Ambulance', 1),
('society_army', 'Army', 1),
('society_autoecole', 'Auto Ecole', 1),
('society_barbier', 'Barbier', 1),
('society_bav', 'Bav', 1),
('society_bowling', 'bowling', 1),
('society_brasseur', 'Brasseur', 1),
('society_comedy', 'Comedy', 1),
('society_crucial', 'crucial', 1),
('society_cuisinier', 'cuisinier', 1),
('society_fib', 'Fib', 1),
('society_fueler', 'Raffineur', 1),
('society_gouv', 'Gouvernement', 1),
('society_nightclub', 'Nightclub', 1),
('society_pizza', 'pizza', 1),
('society_police', 'Police', 1),
('society_psy', 'Psychologue', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_army', NULL, '{}'),
(3, 'society_autoecole', NULL, '{}'),
(4, 'society_barbier', NULL, '{}'),
(5, 'society_bav', NULL, '{}'),
(6, 'society_bowling', NULL, '{}'),
(7, 'society_brasseur', NULL, '{}'),
(8, 'society_comedy', NULL, '{}'),
(9, 'society_crucial', NULL, '{}'),
(10, 'society_cuisinier', NULL, '{}'),
(11, 'society_fib', NULL, '{}'),
(12, 'society_fueler', NULL, '{}'),
(13, 'society_gouv', NULL, '{}'),
(14, 'society_nightclub', NULL, '{}'),
(15, 'society_pizza', NULL, '{}'),
(16, 'society_police', NULL, '{}'),
(17, 'society_psy', NULL, '{}'),
(18, 'society_taxi', NULL, '{}'),
(19, 'society_unicorn', NULL, '{}'),
(20, 'society_vigne', NULL, '{}'),
(21, 'user_ears', '467826b1f966aed6683f462c40b5cea8ad5b1a22', '{}'),
(22, 'user_glasses', '467826b1f966aed6683f462c40b5cea8ad5b1a22', '{}'),
(23, 'user_helmet', '467826b1f966aed6683f462c40b5cea8ad5b1a22', '{}'),
(24, 'user_mask', '467826b1f966aed6683f462c40b5cea8ad5b1a22', '{}'),
(4050, 'user_ears', '9dad3f34917e6057a448b26b0352dbd5ddc87310', '{}'),
(4051, 'user_helmet', '9dad3f34917e6057a448b26b0352dbd5ddc87310', '{}'),
(4052, 'user_mask', '9dad3f34917e6057a448b26b0352dbd5ddc87310', '{}'),
(4053, 'user_glasses', '9dad3f34917e6057a448b26b0352dbd5ddc87310', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `epc_bolos`
--

CREATE TABLE `epc_bolos` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `apperance` varchar(250) DEFAULT NULL,
  `type_of_crime` varchar(250) DEFAULT NULL,
  `fine` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `epc_notes`
--

CREATE TABLE `epc_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `favoriteanimation`
--

CREATE TABLE `favoriteanimation` (
  `id` bigint(255) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `lib` varchar(255) DEFAULT 'mini@strip_club@idles@bouncer@base',
  `animation` varchar(255) DEFAULT 'base',
  `repet` int(5) DEFAULT 1,
  `button` int(5) DEFAULT 20,
  `scenario` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_bav`
--

CREATE TABLE `fine_types_bav` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_bav`
--

INSERT INTO `fine_types_bav` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de bav', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de bav', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('5fromages', 'Pizza au 5 fromage', 5, 0, 1),
('bandage', 'Bandage', 2, 0, 1),
('barbecue', 'pizza au barbecue', 5, 0, 1),
('biere_blanche', 'Biere blanche', 500, 0, 1),
('biere_brune', 'Biere brune', 500, 0, 1),
('bigmac', 'Big-Mac (50g)', 50, 0, 1),
('blowpipe', 'Chalumeaux (10g)', 10, 0, 1),
('bois', 'Bois (100g)', 100, 0, 1),
('bois_pooch', 'Bois coupée (55g)', 55, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes (5g)', 5, 0, 1),
('bolchips', 'Packet de chips (15g)', 15, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou (5g)', 5, 0, 1),
('bolpistache', 'Bol de pistaches (5g)', 5, 0, 1),
('box_.45ACP', 'Boite de munitions type .45 ACP', 10, 0, 1),
('box_12mm', 'Boite de cartouches type 12mm', 10, 0, 1),
('box_357Magnum', 'Boite de munitions type 357 Magnum', 10, 0, 1),
('box_7.62mm', 'Boite de munitions type 7.62mm', 10, 0, 1),
('box_9mm', 'Boite de munitions type 9mm', 10, 0, 1),
('bread', 'Pain (50g)', 50, 0, 1),
('bulletproof', 'Gilet par balles', 1, 0, 1),
('buritto', 'Buritto (4g)', 4, 0, 1),
('calzone', 'Pizza calzone', 5, 0, 1),
('carokit', 'Kit carosserie (3g)', 3, 0, 1),
('carotool', 'outils carosserie (4g)', 4, 0, 1),
('chest', 'Coffre fort(100)', 100, 0, 1),
('cni', 'Carte National Didentité', 5, 0, -1),
('coca', 'Coca (10g)', 10, 0, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1),
('compote', 'Compote a la pomme', 10, 0, 1),
('copper', 'Cuivre (30g)', 30, 0, 1),
('crucial', 'crucial (8g)', 8, 0, 1),
('defibrillateur', 'Defibrillateur', 10, 0, 1),
('diamond', 'Diamant (80g)', 80, 0, 1),
('donut', 'Donuts (2g)', 2, 0, 1),
('drpepper', 'Dr. Pepper (5g)', 5, 0, 1),
('energy', 'Energy Drink (5g)', 5, 0, 1),
('ephedrine', 'Ephedrine', 300, 0, 1),
('essence', 'Essence', 500, 0, 1),
('feuillecoca', 'Feuille de coca', 100, 0, 1),
('fixkit', 'Kit réparation (5g)', 5, 0, 1),
('fixtool', 'outils réparation (6g)', 6, 0, 1),
('frite', 'Frite (5g)', 5, 0, 1),
('fuel', 'Petrol (50g)', 50, 0, 1),
('gazbottle', 'bouteille de gaz (11g)', 11, 0, 1),
('gold', 'Or (50g)', 50, 0, 1),
('golem', 'Golem (5g)', 5, 0, 1),
('graine', 'Graine de Weed', 1, 0, 1),
('graineble', 'Graine de blé', 10, -1, 1),
('grand_cru', 'Grand cru', 1, 0, 1),
('grapperaisin', 'Grappe de raisin (5g)', 5, 0, 1),
('hacha', 'Hache (50g)', 50, 0, 1),
('hifi', 'HiFi', 1, 0, 1),
('houblon', 'Houblon', 500, 0, 1),
('ice', 'Glaçon (5g)', 5, 0, 1),
('icetea', 'Icetea (5g)', 5, 0, 1),
('ing', 'ingredient a pizza', 10, 0, 1),
('iron', 'Fer (30g)', 30, 0, 1),
('jager', 'Jägermeister (5g)', 5, 0, 1),
('jagerbomb', 'Jägerbomb (5g)', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère (3g)', 3, 0, 1),
('jusfruit', 'Jus de fruit (10g)', 10, 0, 1),
('jus_raisin', 'Jus de raisin', 1, 0, 1),
('lentilles', 'Lentilles', 5, 0, 1),
('limonade', 'Limonade (5g)', 5, 0, 1),
('maderacaoba', 'Planches en bois d\'acajou (10g)', 10, 0, 1),
('maderanogal', 'Planches en bois de noyer (10g)', 10, 0, 1),
('maderaroble', 'Tables en bois de chêne (10g)', 10, 0, 1),
('martini', 'Martini blanc (5g)', 5, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('menthe', 'Feuille de menthe (1g)', 1, 0, 1),
('metreshooter', 'Mètre de shooter (3g)', 3, 0, 1),
('mixapero', 'Mix Apéritif (3g)', 3, 0, 1),
('mojito', 'Mojito (5g)', 5, 0, 1),
('nachos', 'Nachos (5g)', 5, 0, 1),
('orange', 'Orange (10g)', 10, 0, 1),
('orange_pooch', 'Jus dorange (15g)', 15, 0, 1),
('orge', 'Orge', 500, 0, 1),
('orientale', 'Pizza orientale', 5, 0, 1),
('packaged_plank', 'Bois traité (40g)', 40, 0, 1),
('pate', 'Pate', 10, 0, 1),
('patecoca', 'Pate de coca', 200, 0, 1),
('petrol_raffin', 'Petrol rafinée (45)', 45, 0, 1),
('phone', 'Iphon', 1, 0, 1),
('pico', 'Pioche (800g)', 800, 0, 1),
('plastique', 'Plastique', 300, 0, 1),
('pomme', 'Pomme (10g)', 10, 0, 1),
('pomme_pooch', 'Jus de pomme (15g)', 15, 0, 1),
('puree', 'Purée', 5, 0, 1),
('quesadilla', 'Quesadilla (10g)', 10, 0, 1),
('raisin', 'Raisin', 1, 0, 1),
('reine', 'Pizza reine', 5, 0, 1),
('rhum', 'Rhum (5g)', 5, 0, 1),
('rhumcoca', 'Rhum-coca (5g)', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits (5g)', 5, 0, 1),
('sable', 'Sable (30g)', 30, 0, 1),
('sable_pooch', 'Verre (45g)', 45, 0, 1),
('salade', 'Mexican salade (3g)', 3, 0, 1),
('saucisson', 'Saucisson (5g)', 5, 0, 1),
('saumons', 'Pizza au saumon', 5, 0, 1),
('scope', 'Lunette', 1, 0, 1),
('sim', 'Carte Sim', 1, 0, 1),
('soda', 'Soda (5g)', 5, 0, 1),
('soupe', 'Soupe', 5, 0, 1),
('stone', 'Pierre (50g)', 50, 0, 1),
('tel', 'ponei', 1, 0, 1),
('teqpaf', 'Teq\'paf (5g)', 5, 0, 1),
('tequila', 'Tequila (5g)', 5, 0, 1),
('truelle', 'truelle', 5, -1, 1),
('very_extented_magazine', 'Chargeur grande capacité', 1, 0, 1),
('viande', 'Viande', 1000, 0, 1),
('viande2', 'Viande à Kebab', 1000, 0, 1),
('vine', 'Vin', 1, 0, 1),
('vodka', 'Vodka (5g)', 5, 0, 1),
('vodkaenergy', 'Vodka-energy (5g)', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits (5g)', 5, 0, 1),
('washed_stone', 'Pierre lavée (40g)', 40, 0, 1),
('whisky', 'Whisky (5g)', 5, 0, 1),
('whiskycoca', 'Whisky-coca (5g)', 5, 0, 1),
('xanax', 'Xanax', 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `isjailed` tinyint(1) DEFAULT NULL,
  `J_Time` datetime NOT NULL,
  `J_Cell` varchar(20) NOT NULL,
  `Jailer` varchar(100) NOT NULL,
  `Jailer_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `job2_grades`
--

CREATE TABLE `job2_grades` (
  `id` int(11) NOT NULL,
  `job2_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job2_grades`
--

INSERT INTO `job2_grades` (`id`, `job2_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed2', 0, 'unemployed2', 'Unemployed2', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('aircraft', 'Aircraft Dealer', 0),
('ambulance', 'Ambulance', 0),
('army', 'Army', 0),
('autoecole', 'Auto Ecole', 0),
('barbier', 'barbier', 1),
('bav', 'LSPD', 0),
('biker', 'Concessionnaire Moto', 0),
('bowling', 'bowling', 0),
('brasseur', 'Brasseur', 0),
('brinks', 'Brinks', 0),
('cardealer', 'Concessionnaire', 0),
('comedy', 'Comedy', 0),
('crucial', 'crucial', 0),
('cuisinier', 'cuisinier', 0),
('depanneur', 'Mécano', 0),
('fib', 'FIB', 0),
('fueler', 'Raffineur', 1),
('gouv', 'Gouv', 0),
('mecano', 'Mécano', 0),
('mechanic', 'Mécano', 0),
('Nightclub', 'Nightclub', 1),
('pizza', 'pizza', 0),
('police', 'LSPD', 0),
('psy', 'Psychologue', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0),
('unemployed2', 'Unemployed2', 0),
('unicorn', 'Unicorn', 1),
('vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs2`
--

CREATE TABLE `jobs2` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs2`
--

INSERT INTO `jobs2` (`name`, `label`) VALUES
('unemployed2', 'Unemployed2');

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'unemployed2', 0, 'unemployed2', 'Unemployed2', 200, '{}', '{}'),
(3, 'bowling', 0, 'recruit', 'Recrue', 3, '{}', '{}'),
(4, 'bowling', 1, 'employer', 'Employé(e)', 3, '{}', '{}'),
(5, 'bowling', 2, 'viceboss', 'Co-gérant', 5, '{}', '{}'),
(6, 'bowling', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(7, 'cuisinier', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
(8, 'cuisinier', 1, 'employer', 'Employé(e)', 300, '{}', '{}'),
(9, 'cuisinier', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(10, 'cuisinier', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(11, 'aircraft', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(12, 'aircraft', 1, 'novice', 'Novice', 25, '{}', '{}'),
(13, 'aircraft', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(14, 'aircraft', 3, 'boss', 'Patron', 0, '{}', '{}'),
(15, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(18, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(19, 'army', 0, 'recruit', 'Soldat', 0, '{}', '{}'),
(20, 'army', 1, 'firstclass', '1er Classe', 0, '{}', '{}'),
(21, 'army', 2, 'capo', 'Caporal', 0, '{}', '{}'),
(22, 'army', 3, 'chiefcapo', 'Caporal-Chef', 0, '{}', '{}'),
(23, 'army', 4, 'sergeant', 'Sergent', 0, '{}', '{}'),
(24, 'army', 5, 'chiefsergeant', 'Sergent-Chef', 0, '{}', '{}'),
(25, 'army', 6, 'adjudant', 'Adjudant', 0, '{}', '{}'),
(26, 'army', 7, 'chiefadjudant', 'Adjudant-Chef', 0, '{}', '{}'),
(27, 'army', 8, 'major', 'Major', 0, '{}', '{}'),
(28, 'army', 9, 'aspirant', 'Aspirant', 0, '{}', '{}'),
(29, 'army', 10, 'souslieutenant', 'Sous-lieutenant', 0, '{}', '{}'),
(30, 'army', 11, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(31, 'army', 12, 'captain', 'Capitaine', 0, '{}', '{}'),
(32, 'army', 13, 'commandant', 'Commandant', 0, '{}', '{}'),
(33, 'army', 14, 'lieutenantcolonel', 'Lieutenant-colonel', 0, '{}', '{}'),
(34, 'army', 15, 'colonel', 'Colonel', 0, '{}', '{}'),
(35, 'army', 16, 'brigadiergeneral', 'Général de brigade', 0, '{}', '{}'),
(36, 'army', 17, 'divisiongeneral', 'Général de division', 0, '{}', '{}'),
(37, 'army', 18, 'generalofthearmycorps', 'Général de corps d\'armée', 0, '{}', '{}'),
(38, 'army', 19, 'generalarmy', 'Général d\'armée', 0, '{}', '{}'),
(39, 'army', 20, 'boss', 'Maréchal', 0, '{}', '{}'),
(40, 'autoecole', 0, 'recrue', 'Intérimaire', 0, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(41, 'autoecole', 1, 'novice', 'Confirmer', 0, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(42, 'autoecole', 2, 'cdisenior', 'Adjoint', 0, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(43, 'autoecole', 3, 'boss', 'Patron', 0, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(48, 'biker', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(49, 'biker', 1, 'novice', 'Novice', 25, '{}', '{}'),
(50, 'biker', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(51, 'biker', 3, 'boss', 'Patron', 0, '{}', '{}'),
(52, 'comedy', 0, 'barman', 'Barman', 300, '{}', '{}'),
(53, 'comedy', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(54, 'comedy', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(55, 'comedy', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(56, 'crucial', 0, 'recruit', 'Recrue', 3, '{}', '{}'),
(57, 'crucial', 1, 'employer', 'Employé(e)', 3, '{}', '{}'),
(58, 'crucial', 2, 'viceboss', 'Co-gérant', 5, '{}', '{}'),
(59, 'crucial', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(60, 'depanneur', 0, 'recrue', 'Recrue', 1, '{\"tshirt_1\":15,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":1,\"torso_1\":65\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":0,\"\"shoes_1\":82,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_1\":2,\"pants_1\":38,\"pants_2\":1,\"torso_1\":89,\"tshirt_1\":15,\"arms\":42,\"bags_1\":45,\"helmet_2\":0}\r\n\r\n\r\n\r\n', '{}'),
(61, 'depanneur', 1, 'novice', 'Novice', 1, '{\"tshirt_1\":15,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":1,\"torso_1\":65\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":0,\"\"shoes_1\":82,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_1\":2,\"pants_1\":38,\"pants_2\":1,\"torso_1\":89,\"tshirt_1\":15,\"arms\":42,\"bags_1\":45,\"helmet_2\":0}\r\n', '{}'),
(62, 'depanneur', 2, 'experimente', 'Experimente', 1, '{\"tshirt_1\":15,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":1,\"torso_1\":65\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":0,\"\"shoes_1\":82,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_1\":2,\"pants_1\":38,\"pants_2\":1,\"torso_1\":89,\"tshirt_1\":15,\"arms\":42,\"bags_1\":45,\"helmet_2\":0}\r\n', '{}'),
(63, 'depanneur', 3, 'chief', 'Chef d\'équipe', 500, '{\"tshirt_1\":15,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":1,\"torso_1\":65\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":0,\"\"shoes_1\":82,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_1\":2,\"pants_1\":38,\"pants_2\":1,\"torso_1\":89,\"tshirt_1\":15,\"arms\":42,\"bags_1\":45,\"helmet_2\":0}', '{}'),
(64, 'depanneur', 4, 'boss', 'Patron', 1, '{\"tshirt_1\":15,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":1,\"torso_1\":65\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":0,\"\"shoes_1\":82,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_1\":2,\"pants_1\":38,\"pants_2\":1,\"torso_1\":89,\"tshirt_1\":15,\"arms\":42,\"bags_1\":45,\"helmet_2\":0}', '{}'),
(65, 'fib', 1, 'special', 'Agent spécial', 100, '{}', '{}'),
(66, 'fib', 2, 'executif', 'Agent spécial exécutif', 200, '{}', '{}'),
(67, 'fib', 3, 'responsable', 'Agent spécial responsable', 300, '{}', '{}'),
(68, 'fib', 4, 'boss', 'Directeur', 400, '{}', '{}'),
(69, 'gouv', 0, 'stagiaire', 'Stagiaire', 20, '{}', '{}'),
(70, 'gouv', 1, 'gardedc', 'Garde du Corps', 40, '{}', '{}'),
(71, 'gouv', 2, 'secretaire', 'Secrétaire', 60, '{}', '{}'),
(72, 'gouv', 3, 'coboss', 'Vice-président', 85, '{}', '{}'),
(73, 'gouv', 4, 'boss', 'Président', 100, '{}', '{}'),
(74, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(75, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(76, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(77, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(78, 'mecano', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(79, 'mecano', 1, 'novice', 'Novice', 24, '{}', '{}'),
(80, 'mecano', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(81, 'mecano', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(82, 'mecano', 4, 'boss', 'Patron', 0, '{}', '{}'),
(83, 'mecano', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(84, 'mecano', 1, 'novice', 'Novice', 24, '{}', '{}'),
(85, 'mecano', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(86, 'mecano', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(87, 'mecano', 4, 'boss', 'Patron', 0, '{}', '{}'),
(88, 'mecano', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(89, 'mecano', 1, 'novice', 'Novice', 24, '{}', '{}'),
(90, 'mecano', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(91, 'mecano', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(92, 'mecano', 4, 'boss', 'Patron', 0, '{}', '{}'),
(93, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(94, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(95, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(96, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(97, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(98, 'Nightclub', 0, 'barman', 'Barkeeper', 1, '{}', '{}'),
(99, 'Nightclub', 1, 'dancer', 'dancer', 0, '{}', '{}'),
(100, 'Nightclub', 2, 'viceboss', 'Co-Manager', 0, '{}', '{}'),
(101, 'Nightclub', 3, 'boss', 'Manager', 0, '{}', '{}'),
(102, 'pizza', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
(103, 'pizza', 1, 'employer', 'Employé(e)', 300, '{}', '{}'),
(104, 'pizza', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(105, 'pizza', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(106, 'pizza', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
(107, 'pizza', 1, 'employer', 'Employé(e)', 300, '{}', '{}'),
(108, 'pizza', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(109, 'pizza', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(110, 'bav', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(111, 'bav', 1, 'officer', 'Officier', 40, '{}', '{}'),
(112, 'bav', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(113, 'bav', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(114, 'bav', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(115, 'psy', 0, 'recrue', 'Intérimaire', 0, '{\"tshirt_1\":32,\"tshirt_2\":0,\"torso_1\":32, \"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":10, \"pants_2\":0, \"arms\":1}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(116, 'psy', 1, 'novice', 'Confirmer', 0, '{\"tshirt_1\":32,\"tshirt_2\":0,\"torso_1\":32, \"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":10, \"pants_2\":0, \"arms\":1}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(117, 'psy', 2, 'cdisenior', 'Adjoint', 0, '{\"tshirt_1\":32,\"tshirt_2\":0,\"torso_1\":32, \"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":10, \"pants_2\":0, \"arms\":1}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(118, 'psy', 3, 'boss', 'Patron', 0, '{\"tshirt_1\":32,\"tshirt_2\":0,\"torso_1\":32, \"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":10, \"pants_2\":0, \"arms\":1}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(119, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(120, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(121, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(122, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(123, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(124, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(125, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(126, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(127, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(128, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(129, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(130, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(131, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(132, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(133, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(134, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(135, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(136, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(137, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(138, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(139, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(140, 'brasseur', 0, 'recrue', 'Intérimaire', 20, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(141, 'brasseur', 1, 'novice', 'Débutant', 30, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(142, 'brasseur', 2, 'cdisenior', 'Chef d équipe', 40, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(143, 'brasseur', 3, 'boss', 'Patron', 50, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(144, 'brasseur', 0, 'recrue', 'Intérimaire', 20, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(145, 'brasseur', 1, 'novice', 'Débutant', 30, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(146, 'brasseur', 2, 'cdisenior', 'Chef d équipe', 40, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(147, 'brasseur', 3, 'boss', 'Patron', 50, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(148, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(149, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(150, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(151, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(152, 'police', 0, 'cadet', 'Cadet', 20, '{}', '{}'),
(153, 'police', 1, 'officier', 'Officier', 40, '{}', '{}'),
(154, 'police', 2, 'sergent', 'Sergent', 60, '{}', '{}'),
(155, 'police', 3, 'sergentc', 'Sergent Chef', 60, '{}', '{}'),
(156, 'police', 4, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(157, 'police', 5, 'boss', 'Commandant', 100, '{}', '{}'),
(158, 'brinks', 0, 'recrue', 'Recrue', 20, '{}', '{}'),
(159, 'brinks', 1, 'boss', 'Patron', 30, '{}', '{}'),
(160, 'fueler', 0, 'recrue', 'Chauffeur', 50, '{}', '{}'),
(161, 'fueler', 1, 'novice', 'Chef dequipe', 100, '{}', '{}'),
(162, 'fueler', 2, 'adjoint', 'Adjoint', 150, '{}', '{}'),
(163, 'fueler', 3, 'boss', 'Patron', 200, '{}', '{}'),
(164, 'barbier', 0, 'barbier', 'Barbier Employé', 10, '{}', '{}'),
(165, 'barbier', 1, 'boss', 'Barbier', 10, '{}', '{}'),
(166, 'unemployed2', 0, 'unemployed2', 'Unemployed2', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_parcelle`
--

CREATE TABLE `owned_parcelle` (
  `owner` varchar(250) NOT NULL,
  `id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Libre|nonLibre',
  `price` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_parcelle`
--

INSERT INTO `owned_parcelle` (`owner`, `id`, `state`, `price`) VALUES
('steam:11000011b52d192', 1, 1, NULL),
('steam:11000011421be65', 2, 1, NULL),
('0', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_shops`
--

CREATE TABLE `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT 0,
  `ShopName` varchar(30) DEFAULT NULL,
  `ShopLogo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `owned_shops`
--

INSERT INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`, `ShopLogo`) VALUES
('0', 1, 0, 280000, 1549643682, '0', 'img/247.png'),
('0', 2, 0, 220000, 1549643682, '0', 'img/247.png'),
('0', 3, 0, 235000, 1549643682, '0', 'img/247.png'),
('0', 4, 0, 285000, 1549643682, '0', 'img/247.png'),
('0', 5, 0, 135000, 1549643682, '0', 'img/247.png'),
('0', 6, 0, 235000, 1549643682, '0', 'img/247.png'),
('0', 7, 0, 160000, 1549643682, '0', 'img/247.png'),
('0', 8, 0, 275000, 1549643682, '0', 'img/247.png'),
('0', 9, 0, 265000, 1549643682, '0', 'img/247.png'),
('0', 10, 0, 300000, 1549643682, '0', 'img/247.png'),
('0', 12, 0, 145000, 1549643682, '0', 'img/247.png'),
('0', 13, 0, 145000, 1549643682, '0', 'img/247.png'),
('0', 14, 0, 280000, 1549643682, '0', 'img/247.png'),
('0', 16, 0, 435000, 1549643682, '0', 'img/247.png'),
('0', 18, 0, 235000, 1549643682, '0', 'img/247.png'),
('0', 11, 0, 225000, 1549643682, '0', 'img/247.png'),
('0', 19, 0, 150000, 1549643682, '0', 'img/247.png'),
('0', 20, 0, 165000, 1549643682, '0', 'img/247.png'),
('0', 17, 0, 150000, 1549643682, '0', 'img/247.png');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `security` int(1) NOT NULL DEFAULT 0 COMMENT 'Alarm system level',
  `alarmactive` int(1) NOT NULL DEFAULT 0 COMMENT 'Alarm system state',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'etat du véhicule',
  `garageperso` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Garage Personnel',
  `volee` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'vehicule volé',
  `plate` varchar(12) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT '',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `garage_id` varchar(50) NOT NULL DEFAULT 'cubes',
  `health` float NOT NULL DEFAULT 1000,
  `kms` bigint(20) NOT NULL DEFAULT 0,
  `lasthouse` int(11) DEFAULT 0,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `security`, `alarmactive`, `state`, `garageperso`, `volee`, `plate`, `name`, `vehicle`, `type`, `job`, `stored`, `garage_id`, `health`, `kms`, `lasthouse`, `model`) VALUES
('9dad3f34917e6057a448b26b0352dbd5ddc87310', 0, 0, 1, 0, 0, '82LEL249', NULL, '{\"modWindows\":-1,\"modXenon\":false,\"windowTint\":1,\"modStruts\":-1,\"color1\":148,\"modRoof\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"extras\":{\"12\":false,\"11\":false},\"modFrontBumper\":-1,\"modEngine\":3,\"fuelLevel\":98.2,\"modHorns\":-1,\"color2\":0,\"modSteeringWheel\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"plate\":\"82LEL249\",\"plateIndex\":0,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"modLivery\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modTurbo\":1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modBackWheels\":-1,\"modTransmission\":2,\"modVanityPlate\":-1,\"modTrimA\":-1,\"pearlescentColor\":0,\"modDial\":-1,\"modPlateHolder\":-1,\"modArmor\":4,\"modArchCover\":-1,\"modGrille\":-1,\"dirtLevel\":9.1,\"modBrakes\":2,\"bodyHealth\":999.0,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"wheels\":1,\"modAPlate\":-1,\"wheelColor\":4,\"neonEnabled\":[false,false,false,false],\"model\":1507916787,\"modSmokeEnabled\":false,\"engineHealth\":998.5,\"xenonColor\":255,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1}', 'car', '', 0, 'cubes', 998.5, 2684, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pawnshop_vehicles`
--

CREATE TABLE `pawnshop_vehicles` (
  `owner` varchar(30) DEFAULT NULL,
  `security` int(1) NOT NULL DEFAULT 0 COMMENT 'Alarm system state',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `price` int(15) NOT NULL,
  `expiration` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `playerhousing`
--

CREATE TABLE `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `player_clothe`
--

CREATE TABLE `player_clothe` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `clothe` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `position_drugs`
--

CREATE TABLE `position_drugs` (
  `identifier` varchar(40) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `x` double(8,2) NOT NULL,
  `y` double(8,2) NOT NULL,
  `z` double(8,2) NOT NULL,
  `percent` double(8,2) DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `position_plante`
--

CREATE TABLE `position_plante` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `x` double(8,2) NOT NULL,
  `y` double(8,2) NOT NULL,
  `z` double(8,2) NOT NULL,
  `percent` double(8,2) DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(40) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `shops_players`
--

CREATE TABLE `shops_players` (
  `ShopNumber` int(11) NOT NULL DEFAULT 0,
  `src` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `categorie` enum('boisson','nourriture','consommables','divers') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `stolen_vehicles`
--

CREATE TABLE `stolen_vehicles` (
  `owner` varchar(40) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `plate` varchar(12) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `vehicle` longtext DEFAULT NULL,
  `garage_id` varchar(50) NOT NULL DEFAULT 'cubes',
  `health` float NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `top_votes`
--

CREATE TABLE `top_votes` (
  `name` varchar(50) DEFAULT NULL,
  `votes` mediumint(9) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(40) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) DEFAULT 80,
  `bank` int(11) DEFAULT 1000,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT 'user',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job2` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job_grade` int(11) DEFAULT 0,
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT ' {"x":-1080.04,"y":-2723.35,"z":0.81,"heading":223.65}',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `animations` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `house` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `last_house` int(11) DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `money`, `bank`, `group`, `skin`, `job`, `job2`, `job_grade`, `job2_grade`, `loadout`, `inventory`, `position`, `last_property`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `tattoos`, `is_dead`, `animations`, `animal`, `house`, `bought_furniture`, `last_house`, `phone_number`) VALUES
('467826b1f966aed6683f462c40b5cea8ad5b1a22', 80, 1000, 'admin', '{\"complexion_2\":0,\"sun_1\":0,\"eyebf\":0,\"moles_1\":0,\"makeup_3\":0,\"chbw\":0,\"sex\":0,\"makeup_4\":0,\"glasses_2\":0,\"blush_3\":0,\"noseh\":0,\"lipstick_2\":0,\"makeup_1\":0,\"arms\":5,\"cbh\":0,\"hair_color_2\":0,\"watches_1\":-1,\"mask_2\":0,\"tshirt_1\":15,\"eyebh\":0,\"skin\":4,\"chest_1\":0,\"blush_2\":0,\"lipst\":0,\"eyebrows_3\":0,\"beard_4\":0,\"bodyb_2\":0,\"nosebh\":0,\"sun_2\":0,\"hair_2\":0,\"eyeop\":0,\"noset\":0,\"bproof_1\":0,\"neckt\":0,\"chest_2\":0,\"blemishes_1\":0,\"jbw\":0,\"nosew\":0,\"bracelets_2\":0,\"chbbl\":0,\"cbw\":0,\"decals_2\":0,\"hair_1\":8,\"lipstick_3\":0,\"moles_2\":0,\"decals_1\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"eyebrows_1\":30,\"face\":2,\"bracelets_1\":-1,\"beard_2\":10,\"nosepl\":0,\"age_2\":0,\"watches_2\":0,\"bproof_2\":0,\"jbbl\":0,\"glasses_1\":0,\"mask_1\":0,\"beard_1\":10,\"age_1\":0,\"bags_2\":0,\"helmet_2\":0,\"beard_3\":0,\"chain_2\":0,\"chest_3\":0,\"ears_1\":-1,\"chw\":0,\"eyebrows_4\":0,\"blush_1\":0,\"lipstick_1\":0,\"arms_2\":0,\"hair_color_1\":0,\"chho\":0,\"makeup_2\":0,\"complexion_1\":0,\"bodyb_1\":0,\"blemishes_2\":0,\"eye_color\":2,\"chbble\":0,\"eyebrows_2\":10,\"nosel\":-1,\"ears_2\":0}', 'barbier', 'unemployed2', 1, 0, '[]', '[]', '{\"heading\":54.2,\"z\":51.4,\"y\":-227.9,\"x\":65.6}', NULL, 'Miller', 'Kevin', '02-09-1975', 'm', '160', '[{\"percent\":2.1415,\"val\":21415,\"name\":\"endu\"},{\"percent\":0.0,\"val\":0,\"name\":\"force\"},{\"percent\":45.467,\"val\":454670,\"name\":\"hunger\"},{\"percent\":42.445,\"val\":424450,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"}]', NULL, 0, NULL, '[]', '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, '522-4682'),
('9dad3f34917e6057a448b26b0352dbd5ddc87310', 80000000, 1000, 'admin', '{\"arms_2\":0,\"shoes_1\":0,\"blush_1\":0,\"blemishes_1\":0,\"lipstick_4\":0,\"ears_1\":-1,\"helmet_1\":-1,\"shoes_2\":0,\"chain_2\":0,\"pants_1\":0,\"hair_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"hair_color_1\":0,\"makeup_2\":0,\"beard_3\":15,\"lipstick_1\":0,\"eyebrows_3\":15,\"face\":0,\"cbw\":0,\"blemishes_2\":0,\"jbbl\":0,\"eyebrows_4\":0,\"skin\":0,\"bproof_1\":0,\"hair_color_2\":0,\"sun_2\":0,\"chest_1\":0,\"bags_1\":0,\"noseh\":0,\"glasses_1\":0,\"chest_2\":0,\"complexion_2\":0,\"makeup_3\":0,\"chest_3\":0,\"chbbl\":0,\"chbw\":0,\"sun_1\":0,\"blush_2\":0,\"moles_2\":0,\"chho\":0,\"age_2\":0,\"nosew\":0,\"chbble\":0,\"helmet_2\":0,\"eyebh\":0,\"decals_1\":0,\"pants_2\":0,\"hair_1\":0,\"beard_2\":10,\"eyebf\":0,\"cbh\":0,\"torso_2\":0,\"lipst\":0,\"tshirt_1\":0,\"glasses_2\":0,\"nosepl\":0,\"eyeop\":0,\"makeup_4\":0,\"moles_1\":0,\"mask_2\":0,\"chw\":0,\"bags_2\":0,\"blush_3\":0,\"bracelets_1\":-1,\"nosebh\":0,\"noset\":0,\"eyebrows_2\":10,\"eye_color\":0,\"bodyb_1\":0,\"torso_1\":0,\"decals_2\":0,\"neckt\":0,\"jbw\":0,\"watches_1\":-1,\"nosel\":0,\"beard_4\":0,\"arms\":0,\"bproof_2\":0,\"age_1\":0,\"watches_2\":0,\"complexion_1\":0,\"mask_1\":0,\"lipstick_3\":6,\"bracelets_2\":0,\"eyebrows_1\":20,\"makeup_1\":4,\"sex\":14,\"tshirt_2\":0,\"bodyb_2\":0,\"beard_1\":18}', 'cardealer', 'unemployed2', 3, 0, '[{\"name\":\"WEAPON_BAT\",\"ammo\":0,\"tintIndex\":0,\"components\":[],\"label\":\"Batte\"}]', '{\"bread\":4}', '{\"heading\":111.4,\"z\":57.2,\"y\":5153.3,\"x\":2240.8}', NULL, 'Briska', 'Touski', '14/01/1979', 'm', '180', '[{\"name\":\"hunger\",\"percent\":93.331,\"val\":933310},{\"name\":\"thirst\",\"percent\":88.885,\"val\":888850},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"endu\",\"percent\":1.8245,\"val\":18245},{\"name\":\"force\",\"percent\":0.0,\"val\":0},{\"name\":\"drug\",\"percent\":0.0,\"val\":0}]', '[{\"nameHash\":\"MP_MP_Biker_Tat_038_F\",\"collection\":\"mpbiker_overlays\",\"Count\":1},{\"nameHash\":\"MP_MP_Biker_Tat_036_F\",\"collection\":\"mpbiker_overlays\",\"Count\":1},{\"nameHash\":\"MP_Buis_F_Neck_000\",\"collection\":\"mpbusiness_overlays\",\"Count\":1},{\"nameHash\":\"MP_MP_Biker_Tat_037_F\",\"collection\":\"mpbiker_overlays\",\"Count\":1},{\"nameHash\":\"MP_Gunrunning_Tattoo_011_F\",\"collection\":\"mpgunrunning_overlays\",\"Count\":1},{\"nameHash\":\"MP_MP_Biker_Tat_053_F\",\"collection\":\"mpbiker_overlays\",\"Count\":1},{\"nameHash\":\"MP_MP_Biker_Tat_040_F\",\"collection\":\"mpbiker_overlays\",\"Count\":1},{\"nameHash\":\"FM_Tat_F_036\",\"collection\":\"multiplayer_overlays\",\"Count\":1},{\"nameHash\":\"MP_Christmas2017_Tattoo_018_F\",\"collection\":\"mpchristmas2017_overlays\",\"Count\":1}]', 0, NULL, '[]', '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}', 0, '568-5383');

-- --------------------------------------------------------

--
-- Structure de la table `user_accessories`
--

CREATE TABLE `user_accessories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `mask` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Masque',
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, '467826b1f966aed6683f462c40b5cea8ad5b1a22', 'black_money', 0),
(2, '467826b1f966aed6683f462c40b5cea8ad5b1a22', 'money', 160700),
(3, '467826b1f966aed6683f462c40b5cea8ad5b1a22', 'bank', 1500),
(1291, '9dad3f34917e6057a448b26b0352dbd5ddc87310', 'money', 957172),
(1292, '9dad3f34917e6057a448b26b0352dbd5ddc87310', 'bank', 1100),
(1293, '9dad3f34917e6057a448b26b0352dbd5ddc87310', 'black_money', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) DEFAULT NULL,
  `plate` varchar(60) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zone` longtext DEFAULT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_settings`
--

CREATE TABLE `user_settings` (
  `identifier` varchar(40) NOT NULL,
  `pav7` longtext DEFAULT NULL,
  `pav8` longtext DEFAULT NULL,
  `pav9` longtext DEFAULT NULL,
  `bind` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_sim`
--

CREATE TABLE `user_sim` (
  `id` int(50) NOT NULL,
  `identifier` varchar(555) NOT NULL,
  `number` varchar(555) NOT NULL,
  `label` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `whitelist_license`
--

CREATE TABLE `whitelist_license` (
  `identifier` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `whitelist_license`
--

INSERT INTO `whitelist_license` (`identifier`) VALUES
('steam:110000135032e49 '),
('steam:1100001358524a9');

-- --------------------------------------------------------

--
-- Structure de la table `zones`
--

CREATE TABLE `zones` (
  `id` int(11) NOT NULL,
  `points` longtext COLLATE utf8mb4_bin NOT NULL,
  `center` text COLLATE utf8mb4_bin NOT NULL,
  `maxLength` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `cat` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `aircraft_avion`
--
ALTER TABLE `aircraft_avion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `avion_categories`
--
ALTER TABLE `avion_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `avion_sold`
--
ALTER TABLE `avion_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `biker`
--
ALTER TABLE `biker`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `biker_categories`
--
ALTER TABLE `biker_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `biker_sold`
--
ALTER TABLE `biker_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `biker_vehicles`
--
ALTER TABLE `biker_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bought_houses`
--
ALTER TABLE `bought_houses`
  ADD PRIMARY KEY (`houseid`);

--
-- Index pour la table `bourse`
--
ALTER TABLE `bourse`
  ADD PRIMARY KEY (`item`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `car_parking`
--
ALTER TABLE `car_parking`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coffres`
--
ALTER TABLE `coffres`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `criminal_records`
--
ALTER TABLE `criminal_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `epc_bolos`
--
ALTER TABLE `epc_bolos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `epc_notes`
--
ALTER TABLE `epc_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `favoriteanimation`
--
ALTER TABLE `favoriteanimation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_bav`
--
ALTER TABLE `fine_types_bav`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `job2_grades`
--
ALTER TABLE `job2_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs2`
--
ALTER TABLE `jobs2`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_parcelle`
--
ALTER TABLE `owned_parcelle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_shops`
--
ALTER TABLE `owned_shops`
  ADD KEY `identifier` (`identifier`) USING BTREE,
  ADD KEY `ShopNumber` (`ShopNumber`) USING BTREE,
  ADD KEY `ShopName` (`ShopName`) USING BTREE;

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `owner` (`owner`),
  ADD KEY `name` (`name`),
  ADD KEY `vehicle` (`vehicle`(3072)),
  ADD KEY `type` (`type`),
  ADD KEY `job` (`job`),
  ADD KEY `garage_id` (`garage_id`);

--
-- Index pour la table `pawnshop_vehicles`
--
ALTER TABLE `pawnshop_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `playerhousing`
--
ALTER TABLE `playerhousing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `player_clothe`
--
ALTER TABLE `player_clothe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `clothe` (`clothe`(768)),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `position_plante`
--
ALTER TABLE `position_plante`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `shipments`
--
ALTER TABLE `shipments`
  ADD KEY `identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `shops_players`
--
ALTER TABLE `shops_players`
  ADD KEY `shopnumber` (`ShopNumber`) USING BTREE;

--
-- Index pour la table `stolen_vehicles`
--
ALTER TABLE `stolen_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `owner` (`owner`),
  ADD KEY `name` (`name`),
  ADD KEY `garage_id` (`garage_id`);

--
-- Index pour la table `top_votes`
--
ALTER TABLE `top_votes`
  ADD KEY `name` (`name`);

--
-- Index pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_sim`
--
ALTER TABLE `user_sim`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `whitelist_license`
--
ALTER TABLE `whitelist_license`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=916;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT pour la table `aircraft_avion`
--
ALTER TABLE `aircraft_avion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `biker`
--
ALTER TABLE `biker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `biker_vehicles`
--
ALTER TABLE `biker_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3971;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT pour la table `car_parking`
--
ALTER TABLE `car_parking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `criminal_records`
--
ALTER TABLE `criminal_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4054;

--
-- AUTO_INCREMENT pour la table `epc_bolos`
--
ALTER TABLE `epc_bolos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `epc_notes`
--
ALTER TABLE `epc_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `favoriteanimation`
--
ALTER TABLE `favoriteanimation`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `fine_types_bav`
--
ALTER TABLE `fine_types_bav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `job2_grades`
--
ALTER TABLE `job2_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6961;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18146;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46716;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1763;

--
-- AUTO_INCREMENT pour la table `player_clothe`
--
ALTER TABLE `player_clothe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6125;

--
-- AUTO_INCREMENT pour la table `position_plante`
--
ALTER TABLE `position_plante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4575;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1291;

--
-- AUTO_INCREMENT pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2782;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1294;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_sim`
--
ALTER TABLE `user_sim`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT pour la table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
