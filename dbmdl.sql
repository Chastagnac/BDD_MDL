-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 24 mai 2021 à 18:06
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbmdl`
--

-- --------------------------------------------------------

--
-- Structure de la table `atelier`
--

DROP TABLE IF EXISTS `atelier`;
CREATE TABLE IF NOT EXISTS `atelier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unevacation_id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbplacesmaxi` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E1BB1823C4C95587` (`unevacation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atelier_theme`
--

DROP TABLE IF EXISTS `atelier_theme`;
CREATE TABLE IF NOT EXISTS `atelier_theme` (
  `atelier_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL,
  PRIMARY KEY (`atelier_id`,`theme_id`),
  KEY `IDX_AEB6D34382E2CF35` (`atelier_id`),
  KEY `IDX_AEB6D34359027487` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp` int(11) NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(11) DEFAULT NULL,
  `adresse1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`id`, `nom`, `adresse2`, `cp`, `ville`, `tel`, `adresse1`) VALUES
(1, 'Institut Vallier Marseille', NULL, 13005, 'Marseille', 491476657, '67a rue ferrari'),
(2, 'Escrime Provence', NULL, 13013, 'Marseille', 671205105, '1bis impasse des Independants'),
(3, 'Toulon Var Esscrime', 'Rue Sous Lieutenant Guy Friggeri', 83000, 'Toulon', 494366517, 'Complexe sportif Vert Coteau'),
(4, 'Hyeres Escrime', 'Rue du Soldat', 83400, 'Hyères', 494385994, 'Gymnase des Rougières'),
(5, 'Les Cadets de l\'Estuaire - Escrime', NULL, 33390, 'PLASSAC', 661214848, '38 Bis route de l\'Estuaire'),
(6, 'Bordeaux Bastide Escrime', NULL, 33100, 'BORDEAUX', 777078961, 'RUE GALIN'),
(7, 'Gradignan Talence Escrime', NULL, 33170, 'Gradignan', 556891011, 'Parc de la Tannerie '),
(8, 'C.e. De Haguenau', '16, rue du Colonel PAULUS', 67500, 'HAGUENAU', 675412183, 'Gymnase de la Musau'),
(9, 'Club d\'escrime de Saverne la Licorne', '10 RUE SAINTE MARIE', 67700, 'SAVERNE', 670341251, 'COSEC SOURCES II '),
(10, 'Strasbourg UC', '43 avenue du Rhin', 67000, 'STRASBOURG', 675749206, 'Gymnase Aristide BRIAND'),
(11, 'Section Paloise', NULL, 64000, 'PAU', 559276087, '12 rue René Fournets'),
(12, 'Escrime Reze Nantes Metropole', 'RUE DES EPINETTES', 44300, 'NANTES', 616762045, 'GYMNASE COLLEGE ND TOUTES AIDES'),
(13, 'NEC Escrime', 'Rue Louis Joxe', 44200, 'Nantes', 251724313, 'Complexe Sportif Mangin Beaulieu'),
(14, 'Escrime Valletaise', NULL, 44330, 'VALLET', 240547574, 'salle des dorices'),
(15, 'CE d\'Armentières', '8 rue de l\'octroi', 59280, 'ARMENTIERES', 631827256, 'Hall sportive Jean Zay Salle Maurice DIERCKENS '),
(16, 'Academie Escrime Vauban Lille', NULL, 59000, 'LILLE', 659358095, 'aventure Crypte St Pierre St Paul'),
(17, 'C.e. De Faches Thumesnil', NULL, 59155, 'FACHES-THUMESNIL', 662045987, 'Salle Dumas Rue Dumas'),
(18, 'CE de Roubaix', NULL, 59100, 'Roubaix', 320755448, '4 rue Jules Guesde'),
(19, 'Haubourdin Escrime Club', 'Avenue de Beaupré', 59320, 'HAUBOURDIN', 659806224, 'Complexe omnisports Thérey Godin Salle Raoul Dufour'),
(20, 'Escrime Ouest Lyonnais', NULL, 69600, 'OULLINS', 478518769, '2 Rue de la Cadière'),
(21, 'Club Sportif Décinois d\'Escrime', '37 rue sully', 69150, 'Décines', 651842537, 'gymnase Becquerel Salle Sophie NABETH'),
(22, 'Vénissieux Escrime', '7 avenue d\'Oschatz', 69200, 'VENISSIEUX', 472510926, 'Gymnase Jacques Brel'),
(23, 'Escrime Club du Val de Saône', '13 rue Pollet', 69250, 'NEUVILLE SUR SAONE', 670108294, 'Gymnase Rosa Parks'),
(24, 'Cercle d\'Escrime Nord Isère', '21, avenue des Alpes', 38300, 'BOURGOIN JALLIEU', 651191558, 'Hall des sports'),
(25, 'SA de Mandelieu la Napoule', NULL, 6210, 'MANDELIEU LA NAPOULE', 493496213, ' Adresse 1435 bd des Terme'),
(26, 'E.s. Le Cannet Rocheville', 'Boulevard Georges POMPIDOU', 6110, 'LE CANNET', 615373706, 'Gymnase MAILLAN');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210506071107', '2021-05-06 07:11:14', 2404),
('DoctrineMigrations\\Version20210506071855', '2021-05-06 07:19:00', 105),
('DoctrineMigrations\\Version20210506072030', '2021-05-06 07:20:35', 151),
('DoctrineMigrations\\Version20210506073806', '2021-05-06 07:38:11', 150),
('DoctrineMigrations\\Version20210506074307', '2021-05-06 08:23:20', 141),
('DoctrineMigrations\\Version20210506074312', '2021-05-06 08:23:20', 21),
('DoctrineMigrations\\Version20210506082232', '2021-05-06 08:23:20', 21),
('DoctrineMigrations\\Version20210506114514', '2021-05-06 11:45:20', 519),
('DoctrineMigrations\\Version20210506115358', '2021-05-06 11:54:04', 204),
('DoctrineMigrations\\Version20210518095856', '2021-05-18 09:59:17', 409),
('DoctrineMigrations\\Version20210518115342', '2021-05-18 11:53:50', 89),
('DoctrineMigrations\\Version20210524121633', '2021-05-24 12:16:41', 41);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uncompte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5E90F6D63F100910` (`uncompte_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscription_atelier`
--

DROP TABLE IF EXISTS `inscription_atelier`;
CREATE TABLE IF NOT EXISTS `inscription_atelier` (
  `inscription_id` int(11) NOT NULL,
  `atelier_id` int(11) NOT NULL,
  PRIMARY KEY (`inscription_id`,`atelier_id`),
  KEY `IDX_C86AEECF5DAC5993` (`inscription_id`),
  KEY `IDX_C86AEECF82E2CF35` (`atelier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `licencie`
--

DROP TABLE IF EXISTS `licencie`;
CREATE TABLE IF NOT EXISTS `licencie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uncompte_id` int(11) DEFAULT NULL,
  `unclub_id` int(11) NOT NULL,
  `unequalite_id` int(11) NOT NULL,
  `numlicenceunique` int(11) NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(11) DEFAULT NULL,
  `date_adhesion` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3B7556123F100910` (`uncompte_id`),
  KEY `IDX_3B755612DF6E17F` (`unequalite_id`),
  KEY `IDX_3B7556126529F5F1` (`unclub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `licencie`
--

INSERT INTO `licencie` (`id`, `uncompte_id`, `unclub_id`, `unequalite_id`, `numlicenceunique`, `mail`, `nom`, `prenom`, `adresse1`, `adresse2`, `cp`, `ville`, `tel`, `date_adhesion`) VALUES
(1, NULL, 2, 13, 2147483647, 'sem.Nulla.interdum@IntegermollisInteger.edu', 'Giraud', 'Maxime', 'Appartement 477-4467 A, Rd.', 'CP 354, 3141 Fermentum Chemin', '22774', 'Batiscan', 6, '1982-03-01'),
(2, NULL, 7, 20, 2147483647, 'ac@faucibusid.com', 'Denis', 'Léane', 'CP 739, 1294 Faucibus. Av.', 'CP 748, 3331 Tempor Impasse', '47000', 'Nagpur', 6, '2013-03-20'),
(3, NULL, 18, 14, 2147483647, 'Duis.at@miacmattis.org', 'Paul', 'Dorian', '845-4806 Vel, Rue', '4344 Mus. Rd.', '58015', 'College', 6, '2012-07-13'),
(4, NULL, 17, 11, 2147483647, 'et.magnis.dis@dignissim.net', 'Fleury', 'Océane', 'CP 943, 8997 Fringilla, Rd.', 'Appartement 103-2637 Ante, Avenue', '62489', 'Tando Allahyar', 1, '1996-12-01'),
(5, NULL, 10, 10, 2147483647, 'Morbi.non.sapien@SuspendisseeleifendCras.co.uk', 'Lecomte', 'Pierre', '2272 Tellus. Route', 'CP 201, 1487 Egestas. Av.', '62705', 'Rankweil', 9, '1984-04-30'),
(6, NULL, 8, 8, 2147483647, 'tellus.faucibus@tincidunt.org', 'Lebrun', 'Jasmine', '138-5913 Eu Impasse', '8296 Pede Rue', '15479', 'Wokingham', 9, '2015-11-21'),
(7, NULL, 19, 1, 2147483647, 'Proin.vel@sagittis.ca', 'Dumas', 'Amine', 'CP 578, 3840 Vitae Impasse', '145-4932 Conubia Rd.', '79335', 'Villanovafranca', 9, '2004-09-06'),
(8, NULL, 6, 10, 2147483647, 'euismod@faucibus.ca', 'Robert', 'Bienvenue', 'Appartement 303-1617 Non Ave', 'CP 874, 5645 Sagittis. Rd.', '59473', 'Castel Baronia', 6, '1992-07-25'),
(9, NULL, 16, 18, 2147483647, 'vitae.aliquet@Cras.ca', 'Nguyen', 'Maïlé', '339 Mollis. Rue', '122-165 Ipsum Ave', '47272', 'Mühlheim am Main', 4, '2002-02-16'),
(10, NULL, 11, 23, 2147483647, 'nec@lobortis.edu', 'Giraud', 'Rose', 'Appartement 983-4628 Dictum. Route', 'CP 893, 608 Quis Ave', '05724', 'Riparbella', 4, '2019-11-09'),
(11, NULL, 1, 6, 2147483647, 'erat.eget@ullamcorperviverraMaecenas.co.uk', 'Renault', 'Mélissa', '9623 Justo Rue', 'Appartement 465-9722 Vivamus Impasse', '66962', 'Naperville', 3, '2013-12-08'),
(12, NULL, 14, 16, 2147483647, 'non.lobortis.quis@Duis.org', 'Collet', 'Léonard', '660-2714 Per Chemin', '690-9428 Montes, Route', '00434', 'Lives-sur-Meuse', 3, '1982-06-08'),
(13, NULL, 1, 19, 2147483647, 'magna.Nam@tellusnon.ca', 'Leclercq', 'Léonard', 'CP 626, 1857 A, Route', 'Appartement 885-5995 Duis Route', '08374', 'Gressan', 8, '1987-02-05'),
(14, NULL, 7, 16, 2147483647, 'Nunc.lectus.pede@dolorsit.ca', 'Muller', 'Anna', '696-2937 Magna. Impasse', 'CP 505, 1508 Malesuada Avenue', '85071', 'Koninksem', 7, '2001-05-06'),
(15, NULL, 19, 11, 2147483647, 'hendrerit.neque.In@magnisdis.net', 'Dufour', 'Lucie', 'CP 354, 8673 Metus Route', '268-6026 Pellentesque Avenue', '46606', 'High Level', 5, '1978-08-02'),
(16, NULL, 15, 4, 2147483647, 'pellentesque.Sed.dictum@dui.com', 'Thomas', 'Nicolas', '107-9736 Convallis Rue', 'CP 180, 3801 Elit Av.', '26708', 'Redwater', 4, '2021-07-28'),
(17, NULL, 5, 7, 2147483647, 'elit.sed@Crasdictumultricies.net', 'Rey', 'Kilian', 'Appartement 593-7096 Sed Route', '755-4932 Leo. Avenue', '60395', 'Lamorteau', 9, '1980-08-01'),
(18, NULL, 17, 15, 2147483647, 'Donec@elitfermentum.ca', 'Deschamps', 'Mathieu', '430-2817 Non, Avenue', 'CP 652, 7138 A, Route', '22649', 'Würzburg', 4, '1989-01-23'),
(19, NULL, 9, 8, 2147483647, 'malesuada.fames@eleifendnon.edu', 'Robert', 'Bienvenue', '5934 Enim. Ave', '9481 Ac, Av.', '50664', 'Maser', 7, '2020-12-30'),
(20, NULL, 15, 12, 2147483647, 'Nunc@viverra.com', 'Lefebvre', 'Thomas', 'CP 103, 3502 Auctor Av.', '433-9721 Nunc Avenue', '44921', 'Saint-GŽry', 8, '1975-06-27'),
(21, NULL, 5, 5, 2147483647, 'auctor.Mauris.vel@necmetusfacilisis.edu', 'Henry', 'Mélissa', '9069 Risus. Rue', 'CP 470, 4351 Etiam Route', '06571', 'Bhakkar', 7, '2017-04-20'),
(22, NULL, 14, 20, 2147483647, 'risus.varius@tinciduntorciquis.com', 'Boyer', 'Hugo', '615-8088 Neque. Impasse', '9160 Dui. Chemin', '30346', 'Mesa', 7, '1976-07-11'),
(23, NULL, 4, 10, 2147483647, 'metus@volutpat.com', 'Etienne', 'Julien', 'Appartement 723-2635 Fames Av.', '1978 Et Route', '30181', 'Lembeek', 7, '1997-07-16'),
(24, NULL, 20, 22, 2147483647, 'libero.Morbi@elit.edu', 'Guyot', 'Louna', '8818 Proin Chemin', '9260 Facilisis. Chemin', '68845', 'Evansville', 4, '1997-01-01'),
(25, NULL, 9, 6, 2147483647, 'erat@Donecegestas.ca', 'Olivier', 'Simon', 'Appartement 668-9147 Malesuada. Chemin', '463-2404 Nisi Chemin', '12979', 'Shawinigan', 2, '1976-04-07'),
(26, NULL, 12, 7, 2147483647, 'orci.Ut.sagittis@nullaIntegervulputate.edu', 'Carre', 'Manon', '7365 Etiam Rd.', '2344 Et Route', '70839', 'Cartagena', 8, '1995-04-20'),
(27, NULL, 16, 15, 2147483647, 'Duis.at.lacus@tinciduntduiaugue.org', 'Girard', 'Élisa', 'Appartement 952-1135 In Av.', '666-6235 Sed Avenue', '09151', 'Enterprise', 4, '2021-06-25'),
(28, NULL, 18, 6, 2147483647, 'fringilla.mi.lacinia@utpellentesqueeget.edu', 'Poulain', 'Kevin', 'CP 600, 565 A Rue', 'Appartement 928-3738 Augue, Avenue', '89866', 'Saltcoats', 4, '1984-08-27'),
(29, NULL, 11, 23, 2147483647, 'Vivamus.nisi.Mauris@enim.com', 'Rolland', 'Diego', 'Appartement 543-4845 Donec Avenue', 'Appartement 952-6033 Auctor Ave', '70839', 'Chungju', 8, '2010-07-20'),
(30, NULL, 11, 8, 2147483647, 'sit.amet.dapibus@vitaealiquameros.org', 'Jacob', 'Paul', 'Appartement 437-1691 Turpis Rue', 'CP 130, 5047 Vehicula Avenue', '75778', 'Caplan', 6, '2016-05-31'),
(31, NULL, 13, 10, 2147483647, 'eget@urna.ca', 'Deschamps', 'Cloé', 'Appartement 825-7921 Quis Avenue', '421-9865 Lorem Impasse', '32322', 'Latinne', 7, '1994-01-14'),
(32, NULL, 15, 1, 2147483647, 'Fusce@eu.com', 'Perrot', 'Candice', 'Appartement 304-168 Fringilla. Impasse', 'Appartement 214-7318 Gravida Rue', '02512', 'Sint-Ulriks-Kapelle', 4, '2009-12-27'),
(33, NULL, 8, 20, 2147483647, 'tincidunt@Praesentluctus.edu', 'Klein', 'Timéo', '929-1807 Nunc Route', 'CP 388, 8380 Elit. Ave', '86344', 'Saint-Nicolas', 5, '2021-01-19'),
(34, NULL, 9, 8, 2147483647, 'aliquam@cursuspurus.com', 'Marty', 'Gaspard', 'Appartement 489-1442 A Avenue', '959-1980 Erat, Chemin', '63094', 'Duncan', 1, '2005-04-17'),
(35, NULL, 7, 6, 2147483647, 'Aliquam@vel.net', 'Guillaume', 'Hugo', 'CP 951, 5606 Commodo Ave', '207-265 Nisi. Route', '71780', 'North Las Vegas', 1, '2017-12-07'),
(36, NULL, 17, 4, 2147483647, 'imperdiet@sodalesMauris.co.uk', 'Barre', 'Laura', 'Appartement 717-5626 Sodales Chemin', '9739 Augue Rue', '70551', 'Bajaur Agency', 8, '1993-08-05'),
(37, NULL, 19, 7, 2147483647, 'molestie.sodales.Mauris@ridiculusmusProin.edu', 'Moulin', 'Marie', 'Appartement 499-7042 Ipsum Avenue', 'Appartement 964-7667 Fermentum Avenue', '56003', 'Teltow', 9, '1990-11-24'),
(38, NULL, 9, 10, 2147483647, 'Integer.urna.Vivamus@ullamcorpernislarcu.net', 'Robert', 'Éloïse', '508-9718 Lectus Route', 'Appartement 510-9636 Sem, Chemin', '90005', 'Elsene', 6, '1975-04-06'),
(39, NULL, 11, 8, 2147483647, 'quis.arcu.vel@quisaccumsanconvallis.net', 'Girard', 'Constant', '766 Ligula. Av.', '6518 Sed Impasse', '22202', 'Laino Castello', 8, '2015-10-08'),
(40, NULL, 14, 12, 2147483647, 'enim.nec@Fusce.net', 'Brun', 'Edwige', 'Appartement 802-6622 Nulla Rd.', '5074 A Ave', '53675', 'Tramonti di Sopra', 9, '2015-11-16'),
(41, NULL, 17, 8, 2147483647, 'aliquet@Pellentesqueultricies.com', 'Garnier', 'Tristan', '315-6166 Enim, Impasse', '1974 Et, Ave', '57119', 'College', 8, '2003-04-05'),
(42, NULL, 20, 20, 2147483647, 'Curabitur.vel.lectus@variusorci.co.uk', 'Bonnet', 'Charlotte', '3185 Integer Chemin', '7602 Sed Rd.', '83399', 'Chambord', 3, '1998-01-01'),
(43, NULL, 20, 9, 2147483647, 'vitae.sodales.nisi@idblandit.co.uk', 'Gautier', 'Lou', 'Appartement 831-2180 Volutpat. Route', '431-2962 Tristique Route', '08018', 'Puerto López', 2, '1996-06-22'),
(44, NULL, 14, 23, 2147483647, 'Aliquam@turpisAliquamadipiscing.org', 'Royer', 'Valentine', 'CP 935, 6225 Elit. Avenue', '924-3150 Elementum Rue', '60341', 'Placilla', 9, '2014-03-16'),
(45, NULL, 18, 10, 2147483647, 'Duis@risus.co.uk', 'Brun', 'Françoise', 'CP 909, 3830 Risus Route', '611-8543 Fermentum Route', '66553', 'Campolieto', 6, '2016-04-05'),
(46, NULL, 19, 16, 2147483647, 'tellus.Aenean.egestas@neceuismodin.net', 'Schmitt', 'Arthur', '6751 Quam Rue', 'CP 816, 2767 Ultricies Rd.', '47610', 'Montrose', 7, '1976-07-25'),
(47, NULL, 12, 11, 2147483647, 'mauris.sapien.cursus@ornare.ca', 'Robin', 'Lisa', '295-7769 Aenean Avenue', '4540 Libero. Chemin', '25464', 'Durg', 6, '2001-05-09'),
(48, NULL, 6, 16, 2147483647, 'amet.faucibus@consectetuermauris.net', 'Blanchard', 'Charlotte', '6541 Vestibulum Avenue', '254-2353 Morbi Av.', '92859', 'Halle', 9, '1993-02-27'),
(49, NULL, 7, 3, 2147483647, 'vehicula@mi.net', 'Guyot', 'Éloïse', '479-5738 Penatibus Rd.', '2611 Ipsum. Ave', '80140', 'Asse', 6, '2019-11-04'),
(50, NULL, 2, 15, 2147483647, 'vitae.risus@telluseu.com', 'Cordier', 'Adam', 'Appartement 479-7638 Quam, Rd.', '7405 Erat Rue', '97267', 'Lens-Saint-Servais', 6, '2021-05-19'),
(51, NULL, 6, 2, 2147483647, 'odio.tristique@porttitor.co.uk', 'Sanchez', 'Adrian', '451-7436 Faucibus Ave', 'Appartement 907-1147 Non, Impasse', '20808', 'San Jose', 8, '1999-12-19'),
(52, NULL, 20, 9, 2147483647, 'mauris@velfaucibus.com', 'Girard', 'Grégory', 'Appartement 789-5591 Et Ave', 'Appartement 650-9729 In Rd.', '21319', 'General Lagos', 9, '2002-03-25'),
(53, NULL, 10, 10, 2147483647, 'imperdiet.ullamcorper.Duis@egetvariusultrices.co.uk', 'Pereira', 'Lana', '216-6914 Diam Route', '200-8428 Sed Rue', '45477', 'Porirua', 2, '1998-02-04'),
(54, NULL, 1, 16, 2147483647, 'aliquet.nec@eteuismodet.com', 'Cousin', 'Maxime', 'CP 998, 7710 Malesuada Avenue', 'Appartement 291-9733 Mauris Avenue', '71899', 'North Waziristan', 2, '1994-01-15'),
(55, NULL, 16, 7, 2147483647, 'dolor.sit.amet@blandit.org', 'Klein', 'Marine', 'CP 884, 9985 Proin Rd.', 'CP 394, 4554 Augue Ave', '56160', 'Scena/Schenna', 1, '2008-05-03'),
(56, NULL, 5, 7, 2147483647, 'condimentum@lobortisnisinibh.edu', 'Barre', 'Jade', 'Appartement 396-3647 Eget Route', 'Appartement 649-2196 Auctor Impasse', '08576', 'Pont-ˆ-Celles', 2, '2012-02-21'),
(57, NULL, 7, 2, 2147483647, 'magna@vitae.ca', 'Nguyen', 'Nicolas', 'CP 407, 9276 In Impasse', '7841 A, Ave', '78862', 'Gianico', 9, '1993-04-27'),
(58, NULL, 18, 15, 2147483647, 'magna.Suspendisse.tristique@Donecfelisorci.ca', 'Vincent', 'Clément', '796-9287 Ipsum Rd.', 'Appartement 467-3761 Pretium Rd.', '23016', '?skenderun', 8, '2015-05-04'),
(59, NULL, 13, 13, 2147483647, 'ut@telluseu.com', 'Charles', 'Salomé', 'CP 563, 2996 Quam Chemin', 'Appartement 944-346 Amet Avenue', '14118', 'Beuzet', 7, '1978-01-23'),
(60, NULL, 1, 8, 2147483647, 'sit.amet@commodoipsum.com', 'Marty', 'Guillemette', 'Appartement 461-1702 Nulla Avenue', '3021 Ut Av.', '07853', 'Orlando', 5, '1987-05-23'),
(61, NULL, 18, 8, 2147483647, 'non.lobortis@enimnon.ca', 'Pierre', 'Carla', 'CP 482, 878 Donec Rue', 'CP 444, 5761 Ultricies Rue', '34987', 'Pushchino', 1, '2005-03-30'),
(62, NULL, 2, 2, 2147483647, 'Etiam@morbi.net', 'Humbert', 'Maéva', 'Appartement 760-8672 Ornare, Chemin', 'CP 148, 3109 Aliquam Chemin', '99238', 'Murdochville', 2, '1990-04-08'),
(63, NULL, 12, 21, 2147483647, 'augue@ultricies.edu', 'Gomez', 'Samuel', 'CP 878, 4398 Tortor. Route', '218-5532 Dui Chemin', '69713', 'Itabuna', 8, '1999-02-18'),
(64, NULL, 11, 7, 2147483647, 'in.faucibus.orci@euodio.co.uk', 'Boucher', 'Félix', 'Appartement 484-1928 Tincidunt, Route', 'CP 712, 5159 Sem Chemin', '50438', 'Edmundston', 2, '2021-12-20'),
(65, NULL, 17, 13, 2147483647, 'vulputate@sagittisNullam.edu', 'Marchal', 'Edwige', '252-2190 Auctor Rd.', 'CP 415, 9264 Augue, Route', '80725', 'Tampa', 9, '1976-01-19'),
(66, NULL, 11, 23, 2147483647, 'gravida.non.sollicitudin@etrutrumnon.net', 'Fontaine', 'Lucas', '9890 Est. Avenue', '2390 Et, Chemin', '29104', 'Poggiorsini', 1, '1978-10-22'),
(67, NULL, 16, 12, 2147483647, 'mi@purus.org', 'Herve', 'Ambre', '528-730 Et Av.', '1977 Porta Av.', '66214', 'Gönen', 6, '1976-07-07'),
(68, NULL, 20, 15, 2147483647, 'eu.accumsan@ultricesmaurisipsum.org', 'Evrard', 'Chaïma', '7775 Lectus Rd.', 'Appartement 768-871 Placerat Impasse', '93056', 'Langenburg', 7, '2003-03-09'),
(69, NULL, 13, 20, 2147483647, 'sed.pede@rhoncusProinnisl.edu', 'Meyer', 'Louis', 'Appartement 573-8414 Dictum Impasse', '988 Pede Impasse', '44968', 'Pune', 9, '1980-04-29'),
(70, NULL, 4, 18, 2147483647, 'nonummy.ut@lacus.com', 'Humbert', 'Noémie', 'Appartement 595-9520 Tempor Rue', 'Appartement 866-413 Mus. Rue', '60990', 'Püttlingen', 2, '2018-10-13'),
(71, NULL, 4, 18, 2147483647, 'nisi.Cum.sociis@ametrisusDonec.org', 'Germain', 'Mattéo', 'CP 883, 2995 Cursus Route', 'Appartement 132-3404 Mauris Chemin', '54919', 'Baardegem', 4, '2003-04-28'),
(72, NULL, 16, 1, 2147483647, 'quis.pede@mienim.edu', 'Le goff', 'Pierre', 'CP 441, 5654 Sed Rue', '487-6191 Scelerisque Chemin', '55510', 'Cheyenne', 6, '2010-03-19'),
(73, NULL, 4, 8, 2147483647, 'malesuada.fringilla.est@Sedmalesuada.co.uk', 'Guyot', 'Rémi', '364-6728 Non, Rd.', '6845 Nisl Chemin', '14021', 'Kamyzyak', 4, '1990-12-10'),
(74, NULL, 16, 7, 2147483647, 'luctus.Curabitur@ornareInfaucibus.co.uk', 'Collin', 'Félix', '244-5653 Fusce Impasse', 'Appartement 609-7651 Ultricies Chemin', '16366', 'Pordenone', 8, '2021-12-22'),
(75, NULL, 10, 17, 2147483647, 'mollis.Phasellus.libero@egestasFuscealiquet.com', 'Roger', 'Katell', '256-628 Ipsum. Avenue', 'Appartement 540-1237 Eu Rue', '95207', 'Ulhasnagar', 8, '1995-05-28'),
(76, NULL, 10, 2, 2147483647, 'ut@Maurisvel.ca', 'Marty', 'Océane', 'CP 569, 8500 Et, Av.', '1292 Sodales Rd.', '84795', 'Llandovery', 8, '1997-11-26'),
(77, NULL, 9, 8, 2147483647, 'enim.non.nisi@velnisl.edu', 'Gauthier', 'Antonin', '470-4120 Duis Av.', 'Appartement 293-615 Felis. Route', '82097', 'Corroy-le-Grand', 1, '1989-02-15'),
(78, NULL, 12, 17, 2147483647, 'nec@aceleifend.ca', 'Barbier', 'Lamia', 'CP 602, 9313 Consectetuer Chemin', 'CP 990, 2459 Vulputate Ave', '95437', 'Gubbio', 9, '1991-04-16'),
(79, NULL, 15, 8, 2147483647, 'non.enim.Mauris@imperdietnonvestibulum.com', 'Gillet', 'Alexandre', 'CP 376, 6079 Aliquam Av.', 'Appartement 777-4811 Consequat Rd.', '87695', 'LiŽge', 4, '2015-10-06'),
(80, NULL, 11, 20, 2147483647, 'lobortis.risus.In@necligulaconsectetuer.co.uk', 'Meunier', 'Éloïse', 'CP 233, 1006 Arcu. Rd.', '2326 Convallis, Route', '81256', 'Salt Lake City', 1, '1982-10-28'),
(81, NULL, 12, 2, 2147483647, 'sem.elit@ipsumdolorsit.edu', 'Laurent', 'Bruno', '9965 Metus. Ave', 'CP 689, 8898 Pellentesque Av.', '55108', 'Volokonovka', 2, '1985-03-19'),
(82, NULL, 20, 18, 2147483647, 'congue.In@Aliquamrutrum.org', 'Petit', 'Cédric', 'Appartement 298-3585 Suspendisse Avenue', 'CP 612, 1546 Ornare Impasse', '37584', 'Maidenhead', 9, '2018-09-26'),
(83, NULL, 16, 13, 2147483647, 'ullamcorper@quisurnaNunc.co.uk', 'Germain', 'Amélie', '3948 Nam Chemin', 'CP 229, 761 Nonummy Rue', '78695', 'Gwalior', 4, '2010-10-17'),
(84, NULL, 9, 11, 2147483647, 'quis@Maurisquis.com', 'Gomez', 'Noémie', 'CP 419, 4855 Iaculis Chemin', 'CP 865, 132 Enim, Rd.', '31437', 'Aurora', 8, '1984-07-29'),
(85, NULL, 11, 2, 2147483647, 'lorem@inmagnaPhasellus.net', 'Pons', 'Zoé', '646-887 Ut Rd.', '654-2827 Non, Av.', '76424', 'Wetzlar', 5, '1985-09-01'),
(86, NULL, 18, 8, 2147483647, 'sem.mollis@bibendumullamcorperDuis.com', 'Dumont', 'Maryam', 'CP 237, 4490 Nunc Impasse', 'CP 539, 1429 Ipsum Av.', '50314', 'Aisemont', 3, '2009-04-13'),
(87, NULL, 4, 16, 2147483647, 'porttitor.vulputate@convallisligula.edu', 'Roussel', 'Lola', '541-7424 Tortor. Route', '845-8798 Malesuada Impasse', '47618', 'Mandi Bahauddin', 7, '2004-05-20'),
(88, NULL, 18, 19, 2147483647, 'Nulla@Suspendissealiquetmolestie.edu', 'Gomez', 'Cloé', 'Appartement 898-6415 Et, Rd.', 'CP 684, 2808 Class Impasse', '55168', 'Adrano', 3, '2015-08-22'),
(89, NULL, 13, 22, 2147483647, 'metus.facilisis.lorem@lacusvestibulumlorem.net', 'Michel', 'Lola', '1915 Mollis. Ave', 'Appartement 192-413 Vel Chemin', '06082', 'Sullana', 9, '1997-08-01'),
(90, NULL, 7, 19, 2147483647, 'Quisque@dictumplacerataugue.org', 'Schmitt', 'Solene', 'Appartement 635-5979 Tellus Av.', '3485 Odio Route', '45230', 'Termeno sulla strada del vino/Tramin an der Weinstrasse', 5, '1995-10-28'),
(91, NULL, 3, 9, 2147483647, 'enim@risusDonecegestas.com', 'Rey', 'Jade', '125-4037 Morbi Rd.', '6422 Sit Avenue', '90077', 'San Carlos', 1, '2001-10-25'),
(92, NULL, 1, 11, 2147483647, 'ultrices.posuere@risus.co.uk', 'Herve', 'Killian', '6176 Phasellus Ave', '7995 Tortor Rd.', '87649', 'New Haven', 9, '2013-12-12'),
(93, NULL, 11, 5, 2147483647, 'quis.diam@congueturpisIn.edu', 'Vidal', 'Lutécia', 'CP 725, 7839 Urna Avenue', '948-927 Placerat Ave', '46245', 'Rattray', 5, '1992-04-13'),
(94, NULL, 2, 17, 2147483647, 'Cum.sociis@tinciduntDonecvitae.co.uk', 'Schmitt', 'Davy', '3229 Vivamus Rd.', '835-1256 Dui, Chemin', '23572', 'The Hague', 3, '1995-06-09'),
(95, NULL, 4, 1, 2147483647, 'ac.tellus.Suspendisse@interdumliberodui.org', 'Julien', 'Kevin', 'Appartement 213-5857 Pede, Av.', '8928 Odio. Route', '50817', 'Lakeland County', 8, '2015-02-16'),
(96, NULL, 8, 4, 2147483647, 'auctor.nunc.nulla@amet.co.uk', 'Humbert', 'Timéo', 'CP 622, 9278 Dui, Chemin', 'Appartement 820-708 Porttitor Rue', '88786', 'Zwevegem', 2, '1994-02-07'),
(97, NULL, 9, 2, 2147483647, 'orci.quis@egestas.edu', 'Olivier', 'Maelys', '2496 Sit Chemin', '4430 Sodales Rue', '91006', 'Haridwar', 6, '2019-10-17'),
(98, NULL, 12, 20, 2147483647, 'Duis.risus@dolor.com', 'Dufour', 'Tom', '7990 Diam Rue', 'CP 522, 5277 Non Avenue', '77852', 'Avernas-le-Bauduin', 9, '1981-01-05'),
(99, NULL, 6, 18, 2147483647, 'cursus.luctus@Praesenteunulla.ca', 'Renault', 'Lisa', '386-8667 Eu Impasse', 'CP 335, 8018 Iaculis, Av.', '94201', 'Weyburn', 3, '1998-08-19'),
(100, NULL, 6, 3, 2147483647, 'vel.sapien.imperdiet@Maurisvelturpis.co.uk', 'Michel', 'Lauriane', 'Appartement 416-6282 Interdum. Impasse', '5251 Velit Rd.', '56212', 'Gbongan', 3, '1992-04-28'),
(101, NULL, 16, 10, 2147483647, 'metus@velitQuisque.net', 'Durand', 'Nicolas', '968 Praesent Chemin', '178-5352 Ornare, Impasse', '28341', 'Jamioulx', 2, '2006-11-28'),
(102, NULL, 14, 10, 2147483647, 'libero.Proin.mi@velitPellentesque.ca', 'Fleury', 'Tatiana', 'Appartement 592-524 Ut Rue', '4038 Pellentesque Chemin', '92103', 'Bad Kreuznach', 4, '2016-01-02'),
(103, NULL, 9, 13, 2147483647, 'velit.in@ligulaAenean.org', 'Dupuis', 'Tatiana', '202-2618 Facilisis Impasse', '920-1022 Nibh Rd.', '99937', 'Blehen', 4, '1990-07-31'),
(104, NULL, 8, 11, 2147483647, 'pede.nonummy@veliteusem.ca', 'Marty', 'Evan', 'CP 810, 5235 Eu Avenue', '2373 Mi Chemin', '60588', 'Chelsea', 2, '2018-03-15'),
(105, NULL, 8, 18, 2147483647, 'adipiscing@duinecurna.ca', 'Noel', 'Théo', '592-5574 Dui. Avenue', '307 Mauris. Route', '32759', 'Cabo de Santo Agostinho', 3, '1987-03-21'),
(106, NULL, 4, 23, 2147483647, 'Mauris.vel@vulputatevelit.com', 'Richard', 'Capucine', '1681 Feugiat Av.', '877-4924 Convallis Ave', '66990', 'Sachs Harbour', 1, '1991-01-12'),
(107, NULL, 1, 18, 2147483647, 'non.enim@nec.co.uk', 'Guillaume', 'Lutécia', 'CP 573, 1014 Curabitur Chemin', 'CP 643, 8781 Ante Rd.', '39373', 'Aklavik', 7, '2009-05-05'),
(108, NULL, 17, 19, 2147483647, 'Sed.diam@Sed.edu', 'Dupuis', 'Maéva', '331 Facilisis. Route', 'Appartement 911-1530 Eu, Route', '75942', 'Fort Resolution', 8, '1988-02-20'),
(109, NULL, 14, 13, 2147483647, 'Suspendisse.sed@in.com', 'Noel', 'Léane', 'CP 448, 9352 Erat Route', 'CP 861, 205 Erat Av.', '30880', 'Rechnitz', 8, '1986-03-04'),
(110, NULL, 10, 8, 2147483647, 'congue.turpis.In@sagittis.ca', 'Henry', 'Hugo', 'CP 877, 628 Nibh Rue', '337-5183 Velit Route', '50585', 'Rapone', 5, '1983-07-14'),
(111, NULL, 11, 9, 2147483647, 'lectus.convallis@Nullam.ca', 'Moulin', 'Clara', '3921 Eu Ave', 'Appartement 552-3121 Donec Rd.', '63081', 'Gaithersburg', 4, '1992-03-01'),
(112, NULL, 2, 3, 2147483647, 'convallis@montesnascetur.edu', 'Roche', 'Sara', '6502 Interdum. Rd.', '222-5788 Erat Route', '08060', 'Conchalí', 9, '2002-07-15'),
(113, NULL, 9, 11, 2147483647, 'Aenean@ac.edu', 'Roussel', 'Lana', '2959 Aliquam Chemin', 'Appartement 398-1565 Sed Route', '92843', 'Forst', 8, '1993-06-24'),
(114, NULL, 3, 11, 2147483647, 'gravida@ridiculusmusAenean.ca', 'Durand', 'Renaud', 'Appartement 862-1490 Malesuada Route', 'Appartement 514-1793 Scelerisque, Av.', '55983', 'Cap-Rouge', 3, '2017-04-18'),
(115, NULL, 4, 21, 2147483647, 'sed@pede.co.uk', 'Louis', 'Kyllian', '496-5786 Magna. Impasse', '3419 Ac Impasse', '38143', 'Surazh', 5, '1987-07-26'),
(116, NULL, 4, 1, 2147483647, 'vulputate@tellusSuspendisse.com', 'Rousseau', 'Nolan', 'Appartement 966-8712 Nunc Avenue', '6233 Amet, Rue', '11914', 'New Glasgow', 5, '2014-06-04'),
(117, NULL, 10, 6, 2147483647, 'enim.Sed@gravidanonsollicitudin.ca', 'Leclercq', 'Baptiste', 'CP 959, 4334 Vulputate, Chemin', '4290 Pretium Ave', '43245', 'Ragnies', 7, '2003-07-10'),
(118, NULL, 20, 1, 2147483647, 'diam@nuncest.co.uk', 'Guyot', 'Angelina', '5773 Faucibus Rue', '219-2638 Vivamus Rd.', '57485', 'Stonewall', 5, '2010-04-20'),
(119, NULL, 3, 2, 2147483647, 'iaculis.aliquet@necmaurisblandit.co.uk', 'Rey', 'Thomas', '973-9428 Nisi. Rd.', '1435 Ut Av.', '75539', 'Paternopoli', 6, '2015-09-08'),
(120, NULL, 14, 18, 2147483647, 'adipiscing@non.edu', 'Moreau', 'Carla', 'Appartement 696-7396 Iaculis, Ave', 'CP 917, 938 Posuere, Av.', '29835', 'Hard', 2, '2020-10-03'),
(121, NULL, 14, 1, 2147483647, 'est.congue.a@facilisis.edu', 'Adam', 'Anaïs', '177-334 Sed Av.', '530-9987 Placerat Chemin', '46221', 'Kanpur Cantonment', 5, '2012-10-03'),
(122, NULL, 7, 22, 2147483647, 'suscipit.nonummy@erosturpis.com', 'Colin', 'Pierre', '669-4185 Amet Ave', 'CP 738, 8593 Lorem Route', '68763', 'Gandhidham', 6, '1976-12-18'),
(123, NULL, 6, 10, 2147483647, 'mauris.rhoncus.id@aliquetsem.ca', 'Martinez', 'Juliette', 'CP 466, 2120 Est, Ave', 'Appartement 867-658 Blandit Ave', '41068', 'Torgny', 9, '1976-09-05'),
(124, NULL, 9, 3, 2147483647, 'ut.pharetra.sed@mollisvitae.ca', 'Laurent', 'Rosalie', '846-2502 Enim Impasse', '127-7258 In Avenue', '25111', 'Gouda', 3, '2005-05-27'),
(125, NULL, 15, 17, 2147483647, 'Etiam@enim.ca', 'Leroux', 'Thibault', '732-4612 Dolor, Ave', 'Appartement 180-3495 Aliquam Chemin', '30893', 'Muno', 9, '1997-10-27'),
(126, NULL, 15, 6, 2147483647, 'Nam.consequat.dolor@nonluctussit.com', 'Roussel', 'Élouan', 'CP 153, 7153 Amet Rue', 'CP 162, 9952 Ornare Impasse', '82993', 'Westerlo', 7, '1987-10-23'),
(127, NULL, 18, 1, 2147483647, 'dictum@ligulaAliquamerat.net', 'Marie', 'Margot', 'CP 370, 5476 Nascetur Rd.', '216-6160 Mi Rue', '31624', 'College', 6, '2017-05-18'),
(128, NULL, 7, 21, 2147483647, 'volutpat.ornare@Crasconvallisconvallis.edu', 'Rey', 'Léonie', 'CP 650, 5374 Orci, Av.', 'CP 271, 9807 Etiam Impasse', '19944', 'Morinville', 9, '2006-04-08'),
(129, NULL, 15, 10, 2147483647, 'magna.Lorem.ipsum@famesacturpis.net', 'Louis', 'Jeanne', '800-7570 Imperdiet Impasse', '735-4541 Pede Rd.', '15896', 'Mglin', 9, '2010-06-14'),
(130, NULL, 4, 15, 2147483647, 'lorem.luctus@dolor.com', 'Caron', 'Nolan', '893 Semper Chemin', 'Appartement 612-7086 Porttitor Route', '39545', 'Bowden', 9, '1997-10-13'),
(131, NULL, 13, 5, 2147483647, 'consectetuer.mauris.id@sociisnatoquepenatibus.net', 'Pasquier', 'Grégory', '310-4952 Donec Rue', 'Appartement 350-4811 Cursus Route', '13799', 'Hamoir', 4, '2006-05-31'),
(132, NULL, 15, 19, 2147483647, 'eros.Nam@Aenean.edu', 'Martin', 'Nathan', 'Appartement 981-2151 Lectus, Impasse', '864-8428 Cras Rue', '12498', 'Fort Saskatchewan', 4, '1984-03-21'),
(133, NULL, 4, 5, 2147483647, 'Vivamus@nislNullaeu.net', 'Dupuy', 'Louise', 'Appartement 301-5768 Sit Av.', 'CP 296, 7043 Eu Av.', '61622', 'Parkland County', 2, '2017-06-03'),
(134, NULL, 17, 10, 2147483647, 'quis@Nam.edu', 'Lopez', 'Élisa', '8038 Congue Route', 'CP 130, 6265 Nec Av.', '37456', 'Solre-sur-Sambre', 6, '1993-06-11'),
(135, NULL, 1, 10, 2147483647, 'bibendum.fermentum.metus@sitametnulla.com', 'Dufour', 'Gabriel', 'CP 368, 5450 Fames Avenue', 'Appartement 783-2642 Fusce Rd.', '21507', 'Bois-de-Villers', 7, '1996-07-25'),
(136, NULL, 19, 2, 2147483647, 'Nulla.semper.tellus@risus.org', 'Albert', 'Éléna', 'Appartement 638-6771 Donec Rd.', 'CP 559, 3444 Posuere Avenue', '29826', 'Covington', 8, '2006-06-29'),
(137, NULL, 17, 13, 2147483647, 'risus.In.mi@justoeuarcu.ca', 'Rousseau', 'Maelys', '204-1089 Elit, Avenue', '1817 Quis Rd.', '77906', 'Miraj', 3, '1994-05-23'),
(138, NULL, 13, 2, 2147483647, 'diam.eu@luctusfelis.org', 'Baron', 'Louna', 'Appartement 327-7940 Odio. Rd.', 'CP 319, 3109 Nascetur Av.', '76572', 'Cropalati', 5, '2003-08-20'),
(139, NULL, 18, 16, 2147483647, 'Cras.dolor.dolor@scelerisquescelerisquedui.net', 'Perez', 'Léane', '787-9454 Enim. Avenue', 'Appartement 258-306 Egestas, Rd.', '11539', 'Herdersem', 3, '2005-04-04'),
(140, NULL, 4, 6, 2147483647, 'nibh@Intinciduntcongue.co.uk', 'Bailly', 'Cédric', 'CP 381, 4507 Vulputate Rue', '5956 Fringilla Rue', '80690', 'Tuscaloosa', 9, '2013-09-05'),
(141, NULL, 4, 3, 2147483647, 'Aliquam@velitjustonec.co.uk', 'Evrard', 'Killian', 'Appartement 566-4199 Nullam Chemin', '626-4485 Erat Impasse', '69619', 'San Sostene', 7, '1990-07-10'),
(142, NULL, 16, 4, 2147483647, 'Nulla@sed.co.uk', 'Perrot', 'Nathan', 'Appartement 182-3539 Vivamus Impasse', '6596 Elit. Av.', '09875', 'Loreto', 3, '2008-01-18'),
(143, NULL, 9, 2, 2147483647, 'vestibulum.nec.euismod@nonummy.edu', 'Andre', 'Romain', 'CP 575, 9279 Donec Impasse', '868-5881 Ac Impasse', '61496', 'Jennersdorf', 9, '1990-07-18'),
(144, NULL, 12, 22, 2147483647, 'morbi.tristique.senectus@cursusetmagna.ca', 'Aubert', 'Tatiana', '789 Convallis Chemin', '5219 Nulla Impasse', '98205', 'Ribeirão Preto', 9, '1980-02-18'),
(145, NULL, 18, 21, 2147483647, 'amet.orci@semper.edu', 'Giraud', 'Romane', 'Appartement 501-7320 Lacus. Rd.', 'Appartement 224-4777 Diam Av.', '97273', 'Spermalie', 9, '1993-11-30'),
(146, NULL, 9, 17, 2147483647, 'non.arcu@Aenean.org', 'Robin', 'Kylian', '930-1963 Praesent Ave', 'CP 561, 8410 Nullam Ave', '95225', 'Helena', 1, '1986-07-30'),
(147, NULL, 4, 10, 2147483647, 'sollicitudin.orci@enim.net', 'Collet', 'Lutécia', 'CP 289, 7845 Lorem Av.', 'CP 940, 7311 Faucibus Av.', '06176', 'Louisville', 4, '2011-06-21'),
(148, NULL, 16, 21, 2147483647, 'arcu.Aliquam.ultrices@Duis.com', 'Pierre', 'Lorenzo', '4220 Metus Route', '287-2698 Dictum. Impasse', '50920', 'Etawah', 1, '1979-01-06'),
(149, NULL, 14, 19, 2147483647, 'gravida.non.sollicitudin@a.net', 'Robert', 'Bruno', 'Appartement 870-4391 Torquent Route', 'Appartement 133-4923 Libero. Impasse', '61194', 'Valley East', 3, '2009-11-07'),
(150, NULL, 17, 9, 2147483647, 'arcu.Sed@magna.ca', 'Bonnet', 'Tristan', '7750 Fermentum Impasse', 'CP 499, 6104 Aliquam Avenue', '34223', 'Luzzara', 3, '1990-08-04'),
(151, NULL, 16, 11, 2147483647, 'aliquet.odio.Etiam@magnaPhasellusdolor.org', 'Joly', 'Zoé', '1142 Pellentesque Ave', '3253 Accumsan Rue', '91909', 'Uppingham. Cottesmore', 7, '1982-09-27'),
(152, NULL, 8, 19, 2147483647, 'at.nisi@egetvarius.edu', 'Chevalier', 'Émile', '850-255 Ac Route', '325-8627 Nec Route', '61209', 'Hamme-Mille', 6, '2020-09-25'),
(153, NULL, 4, 17, 2147483647, 'et.ultrices@egetmetusIn.com', 'Duval', 'Bastien', 'CP 324, 5933 Ac Rue', '224-2712 Accumsan Rd.', '94189', 'Alessandria', 2, '2018-02-04'),
(154, NULL, 20, 2, 2147483647, 'nisi.Cum@Craspellentesque.ca', 'Noel', 'Noah', '354-8929 Neque. Ave', '1332 Non, Av.', '53306', 'Alexandria', 2, '1999-02-10'),
(155, NULL, 5, 16, 2147483647, 'dictum@tempuslorem.org', 'Guerin', 'Nina', 'Appartement 638-407 Augue Impasse', 'Appartement 858-7550 Non, Route', '18629', 'Gävle', 2, '1999-08-30'),
(156, NULL, 6, 8, 2147483647, 'nonummy.ipsum@utquam.edu', 'Collet', 'Zacharis', '668-2968 Nibh Chemin', 'Appartement 631-8749 Ac, Route', '63083', 'San Miguel', 7, '1998-05-16'),
(157, NULL, 19, 11, 2147483647, 'nisl.Maecenas@consequat.com', 'Marty', 'Fanny', 'Appartement 520-759 Mi Impasse', 'Appartement 836-9762 In Impasse', '62114', 'Qualicum Beach', 3, '1993-12-19'),
(158, NULL, 2, 3, 2147483647, 'ornare.libero.at@velit.edu', 'Paul', 'Yüna', 'CP 677, 381 Eleifend Av.', 'CP 588, 9705 Non Av.', '53921', 'Rodengo/Rodeneck', 2, '2018-12-31'),
(159, NULL, 1, 23, 2147483647, 'penatibus.et.magnis@risusatfringilla.ca', 'Weber', 'Romane', '3630 Feugiat. Route', 'CP 451, 2400 Nulla Impasse', '86649', 'Zaraysk', 1, '1997-06-12'),
(160, NULL, 20, 16, 2147483647, 'nec.urna.et@natoque.net', 'Marechal', 'Anaïs', '2655 Non, Rd.', 'CP 791, 2195 Lorem, Ave', '04054', 'Virginal-Samme', 2, '1994-08-09'),
(161, NULL, 12, 4, 2147483647, 'eros.turpis@lobortisClassaptent.ca', 'Petit', 'Lilou', '831-5371 Nulla Av.', 'Appartement 893-7760 A, Rue', '49528', 'Serik', 2, '2005-07-24'),
(162, NULL, 17, 17, 2147483647, 'tellus.imperdiet.non@Donecvitae.co.uk', 'Robin', 'Victor', '499 Morbi Rue', '581-4543 Quis Rue', '59019', 'Buin', 3, '2012-05-19'),
(163, NULL, 10, 14, 2147483647, 'feugiat.Sed@aliquetsem.co.uk', 'Dufour', 'Killian', '8622 Dictum Av.', 'CP 740, 5396 Mi Avenue', '16161', 'Scandriglia', 6, '1984-02-03'),
(164, NULL, 4, 6, 2147483647, 'mollis@estacfacilisis.edu', 'Gauthier', 'Ambre', '476-9646 Vitae Rd.', 'Appartement 367-7740 Aliquam Route', '25935', 'Tortel', 2, '1978-10-03'),
(165, NULL, 5, 13, 2147483647, 'Donec@massalobortis.co.uk', 'Rousseau', 'Nathan', '776-8589 Non Avenue', 'Appartement 238-6457 Vitae Impasse', '38320', 'Aachen', 4, '1976-11-27'),
(166, NULL, 8, 15, 2147483647, 'nec@ullamcorper.com', 'Herve', 'Carla', '6470 Dui. Rd.', '557-7509 Vehicula Ave', '57486', 'Mont', 8, '1980-01-08'),
(167, NULL, 18, 11, 2147483647, 'nunc.interdum@lectussitamet.org', 'Mercier', 'Katell', 'CP 304, 6679 Lobortis, Ave', 'CP 341, 2811 At Impasse', '53664', 'Wolfville', 6, '1979-10-30'),
(168, NULL, 6, 19, 2147483647, 'nulla@aduiCras.co.uk', 'Roux', 'Adam', '6469 Parturient Rue', '9877 Facilisis Rd.', '83414', 'Grimbergen', 1, '1998-06-05'),
(169, NULL, 13, 22, 2147483647, 'Nunc@afacilisis.ca', 'Bourgeois', 'Florentin', 'CP 301, 9454 Ipsum Rue', '129-8907 Felis Avenue', '35180', 'Missoula', 5, '2001-05-18'),
(170, NULL, 2, 10, 2147483647, 'Ut.sagittis.lobortis@ligulaAeneaneuismod.com', 'Berger', 'Kilian', '9913 Nibh. Route', '934-7235 Sem Avenue', '89857', 'Padang Sidempuan', 1, '1975-11-07'),
(171, NULL, 6, 15, 2147483647, 'egestas.rhoncus.Proin@dictumeuplacerat.edu', 'Garnier', 'Pierre', '240 Vestibulum Route', '624-3237 Lacinia Avenue', '66571', 'Kidderminster', 2, '2006-06-25'),
(172, NULL, 9, 4, 2147483647, 'vehicula@sagittisfelisDonec.co.uk', 'Andre', 'Colin', 'Appartement 392-7720 Mauris. Rd.', '444 Vel Avenue', '31260', 'Neerglabbeek', 8, '1994-11-06'),
(173, NULL, 17, 9, 2147483647, 'Vestibulum.ut@egestas.org', 'Guerin', 'Maëlle', '551-4205 Tincidunt Impasse', 'Appartement 630-7573 Maecenas Avenue', '32679', 'Chantemelle', 6, '1984-07-13'),
(174, NULL, 8, 2, 2147483647, 'felis@ipsum.edu', 'Caron', 'Corentin', 'Appartement 126-1106 Cras Av.', '290-2072 Ornare. Rue', '34638', 'Oviedo', 7, '1978-02-08'),
(175, NULL, 19, 5, 2147483647, 'aliquet.nec.imperdiet@nec.edu', 'Aubry', 'Lisa', 'Appartement 645-4303 Dui. Avenue', 'Appartement 953-4057 Amet, Ave', '94096', 'Bissegem', 7, '2003-08-07'),
(176, NULL, 19, 22, 2147483647, 'ullamcorper@senectuset.org', 'Henry', 'Julia', '5686 In Impasse', 'CP 625, 7152 Enim Rd.', '53127', 'Saint Paul', 2, '1996-12-07'),
(177, NULL, 19, 13, 2147483647, 'lorem.fringilla@tempor.edu', 'Pons', 'Alexandra', '6324 Adipiscing. Ave', '3356 Ullamcorper. Impasse', '62257', 'Shaki', 6, '2008-09-03'),
(178, NULL, 17, 5, 2147483647, 'vitae@vitaealiquet.org', 'Bonnet', 'Erwan', '233-9921 Enim. Av.', '928-7994 Diam Route', '88351', 'HŽlŽcine', 6, '1989-03-01'),
(179, NULL, 1, 8, 2147483647, 'dictum.eu.eleifend@penatibuset.org', 'Blanc', 'Anaëlle', '320-6987 Nibh. Ave', 'Appartement 700-6588 Dis Ave', '61931', 'Parla', 6, '2009-09-16'),
(180, NULL, 17, 14, 2147483647, 'adipiscing.elit.Aliquam@MaurisnullaInteger.edu', 'Garnier', 'Océane', '6256 Donec Impasse', 'CP 479, 4164 Sed Avenue', '00045', 'San José del Guaviare', 5, '2005-06-26'),
(181, NULL, 14, 9, 2147483647, 'rutrum.justo.Praesent@Praesenteu.co.uk', 'Bouvier', 'Léon', 'Appartement 152-8002 Arcu. Av.', 'CP 455, 8181 Arcu Rue', '19039', 'Reutlingen', 5, '1979-07-27'),
(182, NULL, 2, 19, 2147483647, 'consectetuer@Sedetlibero.net', 'Paul', 'Fanny', '500-6788 Ipsum Ave', 'CP 586, 9480 Ridiculus Av.', '45354', 'Alexandra', 6, '2016-09-04'),
(183, NULL, 14, 2, 2147483647, 'elementum.at@quisturpis.net', 'Millet', 'Maïwenn', 'Appartement 750-9672 Ornare Avenue', '9270 Eleifend Rue', '16961', 'Meix-le-Tige', 4, '2017-11-27'),
(184, NULL, 16, 21, 2147483647, 'eget.ipsum.Suspendisse@nuncnulla.co.uk', 'Moreau', 'Sarah', 'Appartement 948-9092 Pede Chemin', '144 Turpis Impasse', '93631', 'Bernburg', 7, '1993-12-25'),
(185, NULL, 7, 1, 2147483647, 'eu.augue.porttitor@ligulaAliquam.edu', 'Evrard', 'Eva', 'CP 577, 1860 Dui. Route', 'CP 583, 6134 Nec Ave', '67111', 'Bitung', 1, '2002-05-22'),
(186, NULL, 14, 23, 2147483647, 'Aenean@arcuSed.ca', 'Berger', 'Samuel', 'CP 549, 7575 Sed Ave', 'CP 325, 9647 Gravida Ave', '19208', 'Opprebais', 7, '2011-10-10'),
(187, NULL, 19, 5, 2147483647, 'Cras@adipiscingelit.net', 'Rey', 'Salomé', '3998 Massa. Avenue', '889-6775 Ultrices, Route', '09757', 'San Giovanni Suergiu', 9, '1978-11-01'),
(188, NULL, 8, 22, 2147483647, 'amet.ultricies@vitaealiquam.net', 'Berger', 'Capucine', 'CP 397, 6444 Aliquet Rd.', '256-9895 Molestie Ave', '25983', 'Bathgate', 8, '1993-08-28'),
(189, NULL, 20, 10, 2147483647, 'erat@Aliquam.edu', 'Marechal', 'Valentine', '5190 Ut Impasse', '2114 Malesuada Ave', '08009', 'Milwaukee', 4, '1989-04-01'),
(190, NULL, 6, 9, 2147483647, 'elit@nequesedsem.ca', 'Morin', 'Esteban', 'CP 707, 9509 Libero. Impasse', 'Appartement 395-7599 Amet, Chemin', '13923', 'Drongen', 2, '2021-07-29'),
(191, NULL, 18, 2, 2147483647, 'purus.Nullam.scelerisque@Nuncullamcorpervelit.co.uk', 'Le goff', 'Nicolas', 'Appartement 487-9962 Dignissim Rd.', 'CP 349, 2607 Elit Avenue', '86715', 'Henis', 2, '1995-12-06'),
(192, NULL, 16, 14, 2147483647, 'viverra.Donec@semperauctorMauris.org', 'Julien', 'Élise', '8488 Dapibus Impasse', '370-4086 Primis Av.', '90418', 'La Roche-sur-Yon', 3, '1989-08-07'),
(193, NULL, 17, 12, 2147483647, 'natoque.penatibus@risusvariusorci.net', 'Royer', 'Margot', '7108 Mus. Chemin', '903-372 Magna, Avenue', '73594', 'Saint Paul', 6, '2008-03-03'),
(194, NULL, 13, 6, 2147483647, 'Aliquam@elementum.edu', 'David', 'Kimberley', '9955 Volutpat Rd.', 'CP 372, 4296 Sem Impasse', '32992', 'João Pessoa', 6, '1975-10-19'),
(195, NULL, 14, 3, 2147483647, 'sodales.nisi.magna@lacus.ca', 'Colin', 'Amandine', 'CP 450, 6213 Malesuada Rd.', '7472 Amet Ave', '99048', 'Cuautla', 1, '2001-09-11'),
(196, NULL, 17, 13, 2147483647, 'imperdiet.nec.leo@loremfringilla.com', 'Dumont', 'Catherine', 'CP 979, 3558 Sodales. Rue', 'Appartement 333-6999 Dui Avenue', '79871', 'Meeuwen', 9, '1985-05-25'),
(197, NULL, 14, 23, 2147483647, 'mollis.nec.cursus@bibendumDonec.ca', 'Legrand', 'Corentin', 'CP 584, 6741 Sem. Rd.', 'CP 456, 8034 Molestie. Rd.', '32517', 'Rodgau', 8, '2014-10-17'),
(198, NULL, 2, 3, 2147483647, 'tellus@sagittis.edu', 'Denis', 'Rosalie', 'CP 942, 1754 A Rd.', 'CP 877, 4609 Volutpat. Avenue', '40644', 'Stonewall', 5, '1996-02-01'),
(199, NULL, 6, 8, 2147483647, 'pede@ullamcorpervelit.edu', 'Blanc', 'Sarah', 'Appartement 995-5286 Ornare, Impasse', '475-2986 Lectus Rue', '11927', 'Macklin', 9, '1988-04-22'),
(200, NULL, 20, 16, 2147483647, 'arcu@feugiatLoremipsum.com', 'Moulin', 'Kimberley', '2423 Pede Impasse', 'CP 686, 8423 Nisi Rd.', '90131', 'Jedburgh', 7, '2019-07-24'),
(201, NULL, 17, 3, 2147483647, 'ultrices.mauris@loremut.com', 'Weber', 'Eva', 'Appartement 360-1720 Diam Impasse', 'Appartement 508-7601 Euismod Rue', '29464', 'Lac La Biche County', 3, '1989-12-13'),
(202, NULL, 18, 4, 2147483647, 'scelerisque.mollis@nullaInteger.org', 'Charpentier', 'Anaël', '377-5304 Id Rue', 'CP 649, 7696 Vitae Ave', '50504', 'Waiblingen', 5, '2015-06-02'),
(203, NULL, 8, 15, 2147483647, 'metus.In@senectus.ca', 'Dufour', 'Françoise', '1093 Ante Avenue', '6965 Velit. Impasse', '48605', 'Valbrevenna', 1, '1992-09-16'),
(204, NULL, 5, 4, 2147483647, 'orci.in.consequat@justo.edu', 'Simon', 'Florian', 'Appartement 574-7268 Non, Av.', '7880 Magna. Chemin', '40695', 'Forges', 4, '1991-12-01'),
(205, NULL, 13, 19, 2147483647, 'vulputate.lacus@iaculisaliquetdiam.org', 'Mercier', 'Rose', 'CP 595, 1667 Sed Rd.', '3907 Ante, Impasse', '20121', 'Tilly', 9, '1982-04-03'),
(206, NULL, 15, 4, 2147483647, 'dictum.augue.malesuada@nonleoVivamus.org', 'Philippe', 'Colin', 'CP 827, 2868 Praesent Avenue', 'CP 101, 7167 Non, Route', '75186', 'Melle', 6, '1997-12-31'),
(207, NULL, 18, 6, 2147483647, 'montes.nascetur.ridiculus@Phasellusdapibusquam.org', 'Durand', 'Kimberley', '1552 Dictum Av.', '574-7272 Velit Rd.', '94527', 'Göteborg', 6, '1983-09-14'),
(208, NULL, 20, 20, 2147483647, 'Phasellus.at.augue@sitamet.ca', 'Paris', 'Julien', '635-5870 Ipsum Ave', 'CP 173, 6160 Curabitur Impasse', '50682', 'Lobbes', 7, '2009-05-31'),
(209, NULL, 4, 2, 2147483647, 'vulputate@Sedcongue.org', 'Dupont', 'Marwane', '445-5576 Sem Chemin', 'CP 662, 1436 Fusce Ave', '30807', 'Maastricht', 4, '1977-10-03'),
(210, NULL, 2, 4, 2147483647, 'orci.tincidunt@pede.edu', 'Fournier', 'Marine', '3092 Lacinia Chemin', 'CP 558, 9327 Morbi Rue', '23854', 'Louisville', 7, '1991-05-21'),
(211, NULL, 20, 2, 2147483647, 'placerat@massaQuisqueporttitor.com', 'Sanchez', 'Thomas', 'Appartement 447-1311 Natoque Ave', 'Appartement 410-2626 Ante Route', '94073', 'Zaria', 2, '2014-12-19'),
(212, NULL, 15, 7, 2147483647, 'penatibus@loremDonec.org', 'Leveque', 'Baptiste', '3370 Ante Av.', '5890 Ultricies Av.', '98477', 'Codognè', 7, '1992-05-15'),
(213, NULL, 7, 11, 2147483647, 'ligula.Donec.luctus@laciniamattisInteger.co.uk', 'Olivier', 'Charlotte', 'CP 501, 8115 Sem Chemin', 'Appartement 782-7145 Luctus Rd.', '40997', 'Goutroux', 5, '1998-06-09'),
(214, NULL, 4, 16, 2147483647, 'et.euismod.et@molestie.org', 'Rousseau', 'Mattéo', 'CP 213, 2907 Elementum Av.', '716-5627 Pede. Impasse', '89962', 'Schore', 9, '2015-12-24'),
(215, NULL, 8, 17, 2147483647, 'Aenean.euismod@conubia.ca', 'Fournier', 'Elsa', '1146 Cras Ave', 'CP 942, 7822 Ut Impasse', '67794', 'Rezzoaglio', 2, '1984-11-13'),
(216, NULL, 16, 21, 2147483647, 'nec.malesuada@egetipsumDonec.co.uk', 'Garcia', 'Gaspard', '5789 Nulla. Avenue', 'Appartement 346-4903 Dapibus Route', '06669', 'Sibret', 7, '1992-12-14'),
(217, NULL, 7, 10, 2147483647, 'lectus@nec.co.uk', 'Andre', 'Lilou', 'Appartement 915-3159 Cursus Rd.', '3768 Sed, Rd.', '61231', 'Rodengo/Rodeneck', 1, '1978-03-25'),
(218, NULL, 5, 23, 2147483647, 'eget.volutpat.ornare@auguemalesuada.co.uk', 'Jean', 'Adrien', '366-2883 Vulputate, Route', 'Appartement 699-9705 Non Av.', '97728', 'Jabbeke', 6, '2005-04-09'),
(219, NULL, 1, 6, 2147483647, 'dui.in@Sed.net', 'Collet', 'Léonie', 'CP 652, 3551 Erat Rd.', 'Appartement 346-9178 Mollis Route', '76971', 'Aberdeen', 8, '1993-09-13'),
(220, NULL, 19, 1, 2147483647, 'eget@penatibus.net', 'Lefevre', 'Alexia', 'CP 200, 4376 Quisque Rd.', 'CP 809, 952 Proin Impasse', '46196', 'Erchie', 8, '1999-02-16'),
(221, NULL, 6, 4, 2147483647, 'ac.nulla.In@elit.net', 'Denis', 'Noah', 'CP 812, 2955 Sem Chemin', 'Appartement 482-3157 Et Rue', '54301', 'Bayreuth', 8, '1997-09-26'),
(222, NULL, 4, 7, 2147483647, 'non@ullamcorperviverraMaecenas.edu', 'Rey', 'Bastien', 'Appartement 983-2041 Nunc Route', 'CP 992, 1271 Curae; Av.', '80460', 'Viano', 3, '1992-02-02'),
(223, NULL, 19, 23, 2147483647, 'sollicitudin.commodo.ipsum@est.co.uk', 'Dumas', 'Louis', 'Appartement 937-1518 Cras Ave', 'Appartement 199-7444 Consectetuer, Impasse', '62594', 'Queanbeyan', 5, '1986-01-29'),
(224, NULL, 17, 8, 2147483647, 'convallis@Cras.com', 'Aubert', 'Maelys', 'Appartement 270-986 At Avenue', 'CP 234, 6201 Diam. Avenue', '86710', 'La Plata', 9, '2014-11-02'),
(225, NULL, 10, 3, 2147483647, 'in.hendrerit.consectetuer@a.ca', 'Gaillard', 'Enzo', '344-5260 Donec Route', 'CP 442, 9543 Amet, Avenue', '67871', 'Chhindwara', 1, '2000-01-31'),
(226, NULL, 10, 16, 2147483647, 'malesuada.malesuada@sagittis.org', 'Leveque', 'Mélanie', 'Appartement 496-4117 Vitae Impasse', 'CP 732, 1900 Penatibus Impasse', '48311', 'Braunschweig', 3, '1999-07-04'),
(227, NULL, 3, 14, 2147483647, 'Pellentesque@enimMauris.com', 'Julien', 'Syrine', 'CP 149, 7526 Suspendisse Rue', '7107 Nulla Rd.', '96704', 'Walsall', 2, '2018-03-02'),
(228, NULL, 7, 9, 2147483647, 'rutrum@iaculisquispede.co.uk', 'Jacob', 'Noah', '208-529 Egestas. Rd.', 'Appartement 427-2597 Volutpat. Rue', '05169', 'Mataró', 6, '2021-11-25'),
(229, NULL, 10, 8, 2147483647, 'pharetra.nibh.Aliquam@Craseget.ca', 'Adam', 'Émilie', 'CP 468, 8607 Nullam Av.', '925-2490 Proin Ave', '68949', 'Seattle', 2, '1983-03-15'),
(230, NULL, 16, 22, 2147483647, 'pede.ultrices.a@odioEtiamligula.co.uk', 'Germain', 'Adam', 'Appartement 292-9790 Magna Rue', 'CP 300, 391 Scelerisque Chemin', '00489', 'Cz?stochowa', 4, '1979-01-17'),
(231, NULL, 16, 11, 2147483647, 'vestibulum@Fusce.co.uk', 'Bourgeois', 'Mathéo', '4175 Integer Av.', '231 Nunc Rd.', '03356', 'Los Andes', 4, '1992-07-10'),
(232, NULL, 19, 17, 2147483647, 'erat.Sed.nunc@maurisrhoncusid.net', 'Jacquet', 'Élise', 'Appartement 680-126 Torquent Av.', '8207 Aliquam Rd.', '73202', 'Chetwynd', 9, '1976-02-17'),
(233, NULL, 6, 9, 2147483647, 'eros.Proin.ultrices@bibendumullamcorperDuis.net', 'Colin', 'Maelys', '616-2848 Nullam Chemin', '695-3799 Tortor. Route', '08065', 'Gallodoro', 4, '2009-08-05'),
(234, NULL, 4, 3, 2147483647, 'Sed.neque@etcommodoat.ca', 'Mathieu', 'Candice', '517-192 Dolor Impasse', 'Appartement 839-8250 Auctor Chemin', '44651', 'Jecheon', 3, '2012-04-13'),
(235, NULL, 12, 3, 2147483647, 'orci@maurisanunc.net', 'Denis', 'Kimberley', 'CP 445, 1053 Facilisi. Impasse', 'Appartement 885-9610 Sem, Rd.', '86089', 'Alhué', 1, '1976-08-14'),
(236, NULL, 20, 9, 2147483647, 'aliquam@ettristique.ca', 'Rodriguez', 'Chaïma', '6297 A Av.', '4360 Neque Impasse', '68447', 'Maizeret', 9, '2020-05-25'),
(237, NULL, 13, 16, 2147483647, 'enim.Sed.nulla@ullamcorpervelit.com', 'Aubert', 'Noë', '468-3300 Suscipit Chemin', '729-9745 Dictum Avenue', '48308', 'Valuyki', 2, '1988-01-26'),
(238, NULL, 5, 21, 2147483647, 'a.nunc@urnaNuncquis.ca', 'Poulain', 'Noémie', '703-9114 Dui. Av.', 'Appartement 463-190 Erat Av.', '73483', 'Riksingen', 2, '2009-10-21'),
(239, NULL, 3, 15, 2147483647, 'nunc.interdum.feugiat@volutpatNulladignissim.org', 'Daniel', 'Anna', '7359 Et, Rd.', '6190 Mi Avenue', '80134', 'Nice', 9, '2013-07-25'),
(240, NULL, 20, 19, 2147483647, 'eget@duiSuspendisseac.org', 'Charpentier', 'Malo', '780-5051 Vulputate Ave', '5206 Orci. Impasse', '67756', 'Aalen', 3, '1990-04-03'),
(241, NULL, 2, 17, 2147483647, 'cubilia.Curae.Phasellus@euismodurnaNullam.edu', 'Fabre', 'Léo', 'CP 361, 3514 Quisque Ave', 'CP 485, 9422 Ut, Chemin', '45341', 'Lodhran', 7, '1977-10-01'),
(242, NULL, 11, 21, 2147483647, 'Phasellus@liberoestcongue.ca', 'Remy', 'Guillaume', '201-8802 Cum Av.', 'Appartement 809-5726 Varius Rd.', '46141', 'Bothey', 6, '2015-03-11'),
(243, NULL, 10, 4, 2147483647, 'eu@varius.net', 'Vincent', 'Victor', '1396 Erat Ave', 'Appartement 764-2297 Eu Avenue', '01495', 'Indore', 5, '2003-04-08'),
(244, NULL, 11, 16, 2147483647, 'Praesent.eu@erosnec.ca', 'Sanchez', 'Davy', 'CP 390, 4038 Faucibus Rd.', 'Appartement 716-1074 Metus. Impasse', '22110', 'Gressoney-La-Trinitè', 6, '2014-02-23'),
(245, NULL, 9, 7, 2147483647, 'ipsum.Donec@egetnisi.org', 'Rolland', 'Paul', '585-1789 Fermentum Avenue', 'CP 364, 8123 Accumsan Route', '15843', 'Sainte-Flavie', 7, '1999-10-14'),
(246, NULL, 5, 20, 2147483647, 'ipsum.dolor.sit@ultricesiaculis.com', 'Renault', 'Florentin', 'CP 258, 4966 Et Rd.', 'Appartement 880-9544 Donec Impasse', '57569', 'New Bombay', 7, '2018-06-21'),
(247, NULL, 19, 8, 2147483647, 'sem@nequeetnunc.net', 'Morin', 'Clémence', 'CP 966, 917 Purus Rd.', '7290 Fusce Impasse', '21814', 'Gibbons', 7, '2004-09-06'),
(248, NULL, 9, 14, 2147483647, 'turpis.egestas.Aliquam@ipsumnon.net', 'Morin', 'Maïwenn', 'Appartement 715-8331 Augue, Route', 'Appartement 896-1092 Bibendum Chemin', '16204', 'Livo', 5, '1989-04-10'),
(249, NULL, 17, 9, 2147483647, 'ullamcorper.eu.euismod@NullamenimSed.net', 'Thomas', 'Aaron', 'CP 799, 9423 Aenean Av.', 'CP 640, 8145 At Rue', '30263', 'Nives', 7, '1995-08-02'),
(250, NULL, 14, 6, 2147483647, 'sed@consequatlectussit.org', 'Renard', 'Renaud', '384-3940 Et Route', '6365 Ante Rd.', '22275', 'Bairnsdale', 7, '1990-02-25'),
(251, NULL, 3, 21, 2147483647, 'tempus@euodio.com', 'Evrard', 'Ethan', 'CP 552, 7087 Dui Avenue', 'CP 694, 6684 Cum Impasse', '96385', 'Nashville', 9, '1991-04-05'),
(252, NULL, 10, 19, 2147483647, 'ipsum@libero.ca', 'Marechal', 'Alexandra', 'Appartement 270-8844 Ullamcorper. Avenue', 'CP 456, 3056 Posuere Route', '38788', 'Wilmont', 1, '2003-04-24'),
(253, NULL, 3, 7, 2147483647, 'lobortis.quam.a@fermentum.net', 'Lacroix', 'Louise', 'Appartement 666-6692 Sollicitudin Av.', 'Appartement 785-5658 Dapibus Rd.', '23916', 'Collecchio', 2, '2007-07-06'),
(254, NULL, 15, 8, 2147483647, 'ac.arcu.Nunc@nec.org', 'Bouvier', 'Gilbert', '578-1605 Duis Route', '9440 Velit. Ave', '04086', 'San Juan (San Juan de Tibás)', 1, '2000-11-12'),
(255, NULL, 11, 12, 2147483647, 'malesuada.fames@pharetranibh.ca', 'Bonnet', 'Anaïs', 'CP 851, 1085 Nonummy Impasse', '160-5643 Euismod Ave', '15199', 'Nalinnes', 3, '1996-11-05'),
(256, NULL, 16, 7, 2147483647, 'risus@pedeultrices.net', 'Denis', 'Zacharis', '4919 Vitae Avenue', 'Appartement 153-5599 Etiam Rue', '39053', 'MalŽves-Sainte-Marie-Wastines', 6, '1978-03-21'),
(257, NULL, 14, 20, 2147483647, 'sociis.natoque.penatibus@velesttempor.com', 'Barre', 'Clotilde', 'CP 179, 4638 Cras Impasse', '358-5974 A, Impasse', '32725', 'Mérida', 2, '1994-03-16'),
(258, NULL, 2, 21, 2147483647, 'fringilla.est.Mauris@scelerisqueduiSuspendisse.net', 'Meyer', 'Louise', '8161 Sagittis Rd.', 'Appartement 236-3563 Duis Ave', '90471', 'Filignano', 5, '2004-08-14'),
(259, NULL, 9, 14, 2147483647, 'urna.Nunc@egestas.co.uk', 'Weber', 'Angelina', 'CP 125, 374 Penatibus Avenue', '581-962 Id Ave', '59352', 'Ketchikan', 2, '1989-01-19'),
(260, NULL, 2, 20, 2147483647, 'euismod@imperdiet.net', 'Boulanger', 'Rosalie', '594-9270 At, Ave', 'CP 121, 8393 Consectetuer Impasse', '97298', 'Dendermonde', 5, '2004-05-24'),
(261, NULL, 6, 1, 2147483647, 'penatibus.et.magnis@sagittislobortis.co.uk', 'Charles', 'Adrian', '1587 Pharetra, Avenue', '7485 Nec, Avenue', '16214', 'Los Vilos', 8, '1990-09-08'),
(262, NULL, 16, 9, 2147483647, 'Suspendisse@nec.com', 'Morin', 'Edwige', '3647 Non, Rd.', 'CP 549, 3570 Aliquet Chemin', '34795', 'Dörtyol', 7, '1989-01-09'),
(263, NULL, 12, 17, 2147483647, 'ut@vitaediamProin.edu', 'Le roux', 'Margot', '9636 Sed, Ave', '6270 A Route', '62048', 'San Donato di Ninea', 9, '1979-03-31'),
(264, NULL, 10, 23, 2147483647, 'commodo.ipsum.Suspendisse@mauris.co.uk', 'Dupuy', 'Pierre', '111 Penatibus Av.', 'CP 708, 2665 Vitae Ave', '82423', 'Bida', 6, '1980-09-29'),
(265, NULL, 20, 12, 2147483647, 'nibh.Quisque.nonummy@sapien.net', 'Roche', 'Chaïma', 'CP 904, 849 Molestie Chemin', '281-7348 Faucibus Rue', '53150', 'Pochep', 9, '2002-03-02'),
(266, NULL, 6, 14, 2147483647, 'Lorem.ipsum@enim.edu', 'Mallet', 'Catherine', '991-3637 Augue Chemin', 'Appartement 163-9196 Tempus Rd.', '70643', 'Ripacandida', 6, '2004-09-11'),
(267, NULL, 8, 8, 2147483647, 'magna@dis.net', 'Masson', 'Antonin', 'CP 400, 4147 Ut Rd.', '149-4970 Mauris Avenue', '77550', 'Navidad', 9, '1977-10-22'),
(268, NULL, 13, 10, 2147483647, 'commodo.ipsum@montesnascetur.net', 'Royer', 'Adrian', '5601 Facilisis Impasse', '660-4029 Sed Av.', '13976', 'Farrukhabad-cum-Fatehgarh', 2, '1977-06-05'),
(269, NULL, 7, 19, 2147483647, 'Donec.porttitor@mattisvelitjusto.ca', 'Masson', 'Kilian', '347-9190 Urna. Chemin', 'Appartement 554-5428 Semper Avenue', '99170', 'Cirencester', 1, '2004-08-27'),
(270, NULL, 15, 6, 2147483647, 'massa.lobortis.ultrices@ligulaAeneangravida.co.uk', 'Pons', 'Océane', 'CP 928, 7660 Tincidunt Rd.', 'Appartement 504-5164 Etiam Rue', '64315', 'Moere', 7, '1990-10-08'),
(271, NULL, 13, 22, 2147483647, 'vulputate.eu@necurna.org', 'Paul', 'Aaron', '402-293 Risus. Rd.', 'Appartement 597-2742 Vel, Av.', '88436', 'Champdani', 1, '2021-12-19'),
(272, NULL, 11, 17, 2147483647, 'parturient@facilisisfacilisis.ca', 'Gauthier', 'Louna', '109-5978 Dolor. Route', 'CP 271, 9601 Curae; Impasse', '16874', 'Sint-Lambrechts-Herk', 7, '2021-05-12'),
(273, NULL, 9, 1, 2147483647, 'sem.mollis.dui@mauriserateget.org', 'Charpentier', 'Nathan', '7047 Purus. Av.', 'CP 321, 3245 Odio. Rue', '92201', 'Mansehra', 2, '1997-11-28'),
(274, NULL, 8, 16, 2147483647, 'Nunc@dapibusgravida.edu', 'Gonzalez', 'Romane', 'CP 935, 454 Sed Avenue', '410-110 Sed Rd.', '97771', 'Jaboatão dos Guararapes', 6, '2006-08-14'),
(275, NULL, 5, 15, 2147483647, 'magna@sitametorci.com', 'Vasseur', 'Clémence', 'Appartement 806-7045 Mi Rue', '8140 Et Av.', '02178', 'Frascati', 5, '1998-08-22'),
(276, NULL, 10, 12, 2147483647, 'eget@pellentesque.org', 'Prevost', 'Yanis', '292-6982 Montes, Route', 'CP 279, 5867 Sed Impasse', '12202', 'Kempten', 5, '1981-11-09'),
(277, NULL, 1, 17, 2147483647, 'porttitor@dapibusgravida.com', 'Renaud', 'Tatiana', '590-5617 Ornare Rd.', 'CP 151, 6699 Donec Rue', '46133', 'Ficulle', 9, '1987-12-29'),
(278, NULL, 16, 11, 2147483647, 'Suspendisse.aliquet.sem@semperpretiumneque.co.uk', 'Germain', 'Fanny', '4393 Lobortis Ave', '758-3788 Lobortis. Route', '72939', 'Langholm', 7, '1976-11-10'),
(279, NULL, 16, 23, 2147483647, 'neque.venenatis@loremluctusut.co.uk', 'Rey', 'Tatiana', '868-5037 Morbi Rue', 'CP 233, 6779 Vivamus Av.', '74115', 'Puerto Nariño', 4, '2020-07-30'),
(280, NULL, 12, 5, 2147483647, 'et.ultrices.posuere@nislsemconsequat.com', 'Fleury', 'Zacharis', '753-9639 Eget, Impasse', 'CP 261, 7531 Magna Rd.', '01046', 'Beaufays', 1, '2000-10-30'),
(281, NULL, 20, 6, 2147483647, 'Quisque@Phasellus.com', 'Dumont', 'Lorenzo', 'Appartement 387-5334 Mauris Rd.', '4378 Non, Chemin', '31200', 'Montenero Val Cocchiara', 1, '1984-12-02'),
(282, NULL, 5, 21, 2147483647, 'lorem.eget@diamdictum.com', 'Moreau', 'Anaïs', 'CP 668, 343 Feugiat. Av.', '457-7811 Fusce Rue', '23002', 'Magangué', 1, '1999-10-16');
INSERT INTO `licencie` (`id`, `uncompte_id`, `unclub_id`, `unequalite_id`, `numlicenceunique`, `mail`, `nom`, `prenom`, `adresse1`, `adresse2`, `cp`, `ville`, `tel`, `date_adhesion`) VALUES
(283, NULL, 17, 7, 2147483647, 'pede@ante.com', 'Marty', 'Kyllian', '450-7699 Sit Route', '8618 Justo Route', '58757', 'Starachowice', 7, '2018-10-28'),
(284, NULL, 9, 23, 2147483647, 'eu.accumsan.sed@euismodest.com', 'Vincent', 'Charlotte', 'Appartement 431-8121 Sit Rd.', '899 Nonummy Chemin', '57932', 'Villa del Rosario', 8, '1982-05-03'),
(285, NULL, 5, 23, 2147483647, 'nibh.dolor.nonummy@dui.edu', 'Laine', 'Corentin', '994-7092 Diam. Rue', '761-3162 Litora Ave', '46762', 'Arsimont', 5, '2021-08-21'),
(286, NULL, 8, 5, 2147483647, 'neque@velitCraslorem.co.uk', 'Etienne', 'Rémi', 'CP 983, 338 Cursus Rue', 'CP 610, 7680 Enim. Rd.', '34315', 'Chetwynd', 2, '1976-02-12'),
(287, NULL, 7, 12, 2147483647, 'ridiculus.mus.Donec@consectetuer.edu', 'Bonnet', 'Quentin', 'CP 669, 9486 Vestibulum. Impasse', 'CP 306, 2472 Sapien. Route', '02430', 'Sale', 5, '1977-03-19'),
(288, NULL, 15, 22, 2147483647, 'Curabitur.egestas.nunc@nibh.co.uk', 'Marechal', 'Alexia', 'CP 429, 9753 Nunc Impasse', 'Appartement 878-5620 Mauris. Rd.', '00776', 'Mainz', 6, '2007-09-11'),
(289, NULL, 14, 17, 2147483647, 'Quisque.imperdiet@nislMaecenasmalesuada.net', 'Legrand', 'Margot', '797-4142 Vitae Av.', 'CP 412, 3016 Non Impasse', '48461', 'Hatfield', 3, '2008-07-17'),
(290, NULL, 12, 3, 2147483647, 'lacus@ligulaAeneangravida.com', 'Lucas', 'Gilbert', 'Appartement 123-6008 Elit. Rue', 'CP 858, 7617 Vitae Ave', '07353', 'Nagpur', 9, '1987-07-08'),
(291, NULL, 17, 19, 2147483647, 'vitae.purus@dolorNullasemper.edu', 'Guillaume', 'Jordan', 'CP 455, 8566 Neque Impasse', '250-2582 Mollis. Av.', '60610', 'Cañas', 9, '2021-10-26'),
(292, NULL, 18, 3, 2147483647, 'lacus.Quisque@tristique.ca', 'Mercier', 'Clémence', '280-5320 Interdum. Avenue', '358-1361 Est. Impasse', '75837', 'Lenna', 1, '1993-03-11'),
(293, NULL, 3, 23, 2147483647, 'Nulla.facilisi.Sed@Curabituregestasnunc.edu', 'Charpentier', 'Anna', '6871 Libero Av.', '3295 Eget, Ave', '97620', 'Tione di Trento', 8, '1990-06-16'),
(294, NULL, 18, 16, 2147483647, 'lorem@sedtortorInteger.ca', 'Fournier', 'Maïlé', 'Appartement 199-1281 Ornare Rd.', '8053 Velit Chemin', '48407', 'Pocheon', 3, '1981-11-05'),
(295, NULL, 17, 22, 2147483647, 'imperdiet@accumsanneque.net', 'Marechal', 'Noë', '6261 Praesent Chemin', '3570 Metus Chemin', '44825', 'Serampore', 9, '2017-07-24'),
(296, NULL, 5, 3, 2147483647, 'nibh.vulputate.mauris@Sed.edu', 'Blanchard', 'Jasmine', '209-5524 Duis Rue', '506-946 Nullam Chemin', '64382', 'Bergama', 2, '1994-01-14'),
(297, NULL, 6, 14, 2147483647, 'in.cursus@quamafelis.ca', 'Thomas', 'Romain', 'Appartement 704-7123 Enim Ave', 'Appartement 942-8609 Taciti Ave', '80963', 'Conca Casale', 1, '1980-12-07'),
(298, NULL, 19, 16, 2147483647, 'orci.luctus@rhoncusProin.ca', 'Herve', 'Lilian', '599-3634 Nisl. Rue', 'Appartement 280-4412 Ipsum. Av.', '15154', 'Wardha', 3, '1991-02-18'),
(299, NULL, 17, 20, 2147483647, 'dui.nec.tempus@quamCurabiturvel.ca', 'Jacob', 'Loevan', 'CP 936, 2225 Et Rd.', '7055 Vestibulum Chemin', '22101', 'Edremit', 3, '2002-09-10'),
(300, NULL, 13, 23, 2147483647, 'fermentum.metus.Aenean@miDuisrisus.ca', 'Joly', 'Benjamin', '924-5669 Ad Rd.', 'Appartement 758-9185 Enim. Chemin', '54414', 'Schwechat', 4, '2001-11-04');

-- --------------------------------------------------------

--
-- Structure de la table `nuite`
--

DROP TABLE IF EXISTS `nuite`;
CREATE TABLE IF NOT EXISTS `nuite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uneinscription_id` int(11) NOT NULL,
  `unhotel_id` int(11) NOT NULL,
  `unecategoriechambre_id` int(11) NOT NULL,
  `datenuit` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D4CB715BD987352` (`uneinscription_id`),
  KEY `IDX_8D4CB715302A18ED` (`unhotel_id`),
  KEY `IDX_8D4CB7151D32E1DF` (`unecategoriechambre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proposer`
--

DROP TABLE IF EXISTS `proposer`;
CREATE TABLE IF NOT EXISTS `proposer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unhotel_id` int(11) NOT NULL,
  `unechambre_id` int(11) NOT NULL,
  `tarifnuite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_21866C15302A18ED` (`unhotel_id`),
  KEY `IDX_21866C1530D21B5B` (`unechambre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `qualite`
--

DROP TABLE IF EXISTS `qualite`;
CREATE TABLE IF NOT EXISTS `qualite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `qualite`
--

INSERT INTO `qualite` (`id`, `libelle`) VALUES
(1, 'Licencie'),
(2, 'Président de ligue'),
(3, 'Président de club'),
(4, 'Président de CD'),
(5, 'Vice-Président de ligue'),
(6, 'Vice-Président de club'),
(7, 'Vice-Président de CD'),
(8, 'secrétaire de ligue'),
(9, 'secrétaire de club'),
(10, 'secrétaire de CD'),
(11, 'Trésorier de ligue'),
(12, 'Trésorier de club'),
(13, 'Trésorier de CD'),
(14, 'Maitre d\'armes'),
(15, 'Eleve Maitre'),
(16, 'Cadre Technique Régional'),
(17, 'Relais'),
(18, 'Coordinateur de Pôle'),
(19, 'Athlète de Haut Niveau'),
(20, 'TBenevole de Club'),
(21, 'Animateur'),
(22, 'FFE'),
(23, 'Trésorier de CD');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desinscriptions_id` int(11) DEFAULT NULL,
  `daterepas` date NOT NULL,
  `typerepas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_42C84955A364BC17` (`desinscriptions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id`, `libelle`) VALUES
(1, 'Foot'),
(2, 'Escrime');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'leochastagnac@gmail.com', '[\"ROLE_USER\"]', 'mdpmdp'),
(2, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Wm4vRTNQNXc4Lk5zZzZYdA$QUEc7DqwSUFxveMtHZCszc40fMPLNoNWx+E/6zCrlrw'),
(3, 'amandine@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Z1BkQWRGSkN3RVJEWW15aA$TFvtzicPYBOPpIl1EC5c6cXVyHEA2lR5pDXaquiVVAI'),
(4, 'test@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Z0UzTlUuSFRjM2ZwN1k0Mw$TaX0J8d7h26q21zgkrFn5A9ToIqYyH+iOR+TQ2fxR58');

-- --------------------------------------------------------

--
-- Structure de la table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
CREATE TABLE IF NOT EXISTS `vacations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateheuredebut` datetime NOT NULL,
  `dateheurefin` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `atelier`
--
ALTER TABLE `atelier`
  ADD CONSTRAINT `FK_E1BB1823C4C95587` FOREIGN KEY (`unevacation_id`) REFERENCES `vacations` (`id`);

--
-- Contraintes pour la table `atelier_theme`
--
ALTER TABLE `atelier_theme`
  ADD CONSTRAINT `FK_AEB6D34359027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AEB6D34382E2CF35` FOREIGN KEY (`atelier_id`) REFERENCES `atelier` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `FK_5E90F6D63F100910` FOREIGN KEY (`uncompte_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `inscription_atelier`
--
ALTER TABLE `inscription_atelier`
  ADD CONSTRAINT `FK_C86AEECF5DAC5993` FOREIGN KEY (`inscription_id`) REFERENCES `inscription` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C86AEECF82E2CF35` FOREIGN KEY (`atelier_id`) REFERENCES `atelier` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `licencie`
--
ALTER TABLE `licencie`
  ADD CONSTRAINT `FK_3B7556123F100910` FOREIGN KEY (`uncompte_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_3B7556126529F5F1` FOREIGN KEY (`unclub_id`) REFERENCES `club` (`id`),
  ADD CONSTRAINT `FK_3B755612DF6E17F` FOREIGN KEY (`unequalite_id`) REFERENCES `qualite` (`id`);

--
-- Contraintes pour la table `nuite`
--
ALTER TABLE `nuite`
  ADD CONSTRAINT `FK_8D4CB7151D32E1DF` FOREIGN KEY (`unecategoriechambre_id`) REFERENCES `categorie_chambre` (`id`),
  ADD CONSTRAINT `FK_8D4CB715302A18ED` FOREIGN KEY (`unhotel_id`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `FK_8D4CB715BD987352` FOREIGN KEY (`uneinscription_id`) REFERENCES `inscription` (`id`);

--
-- Contraintes pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `FK_21866C15302A18ED` FOREIGN KEY (`unhotel_id`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `FK_21866C1530D21B5B` FOREIGN KEY (`unechambre_id`) REFERENCES `categorie_chambre` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C84955A364BC17` FOREIGN KEY (`desinscriptions_id`) REFERENCES `inscription` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
