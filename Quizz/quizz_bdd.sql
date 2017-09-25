-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 25 Septembre 2017 à 03:48
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `quizz_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `adébloquessuccès`
--

CREATE TABLE `adébloquessuccès` (
  `NomSuccès` varchar(20) NOT NULL,
  `IDCompte` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `adébloquésujet`
--

CREATE TABLE `adébloquésujet` (
  `IDCompte` int(4) NOT NULL,
  `NomSujet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adébloquésujet`
--

INSERT INTO `adébloquésujet` (`IDCompte`, `NomSujet`) VALUES
(74, 'Géologie'),
(74, 'Géométrie'),
(74, 'Mathématiques'),
(106, 'Géométrie'),
(107, 'Géométrie');

-- --------------------------------------------------------

--
-- Structure de la table `appartientguilde`
--

CREATE TABLE `appartientguilde` (
  `IDGuilde` int(4) NOT NULL,
  `IDCompte` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `associéavatar`
--

CREATE TABLE `associéavatar` (
  `NomAvatar` varchar(20) NOT NULL,
  `NomThème` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `associéavatar`
--

INSERT INTO `associéavatar` (`NomAvatar`, `NomThème`) VALUES
('Avatar 1', 'Arts'),
('Avatar 2', 'Littérature'),
('Avatar 3', 'Sciences');

-- --------------------------------------------------------

--
-- Structure de la table `banquedequestion`
--

CREATE TABLE `banquedequestion` (
  `IDCompte` int(4) NOT NULL,
  `IDQuestion` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `banquedequestion`
--

INSERT INTO `banquedequestion` (`IDCompte`, `IDQuestion`) VALUES
(74, 1),
(74, 2),
(74, 3),
(74, 4),
(74, 5),
(74, 6),
(74, 7),
(74, 8),
(74, 9),
(74, 10),
(74, 21),
(74, 22),
(74, 23),
(74, 24),
(74, 25),
(74, 26),
(74, 27),
(74, 31),
(74, 34),
(74, 35),
(83, 1),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(83, 6),
(83, 7),
(83, 8),
(83, 9),
(83, 10),
(84, 1),
(84, 2),
(84, 3),
(84, 4),
(84, 5),
(84, 6),
(84, 7),
(84, 8),
(84, 9),
(84, 10),
(85, 1),
(85, 2),
(85, 3),
(85, 4),
(85, 5),
(85, 6),
(85, 7),
(85, 8),
(85, 9),
(85, 10),
(86, 1),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(86, 6),
(86, 7),
(86, 8),
(86, 9),
(86, 10),
(87, 1),
(87, 2),
(87, 3),
(87, 4),
(87, 5),
(87, 6),
(87, 7),
(87, 8),
(87, 9),
(87, 10),
(88, 1),
(88, 2),
(88, 3),
(88, 4),
(88, 5),
(88, 6),
(88, 7),
(88, 8),
(88, 9),
(88, 10),
(89, 1),
(89, 2),
(89, 3),
(89, 4),
(89, 5),
(89, 6),
(89, 7),
(89, 8),
(89, 9),
(89, 10),
(90, 1),
(90, 2),
(90, 3),
(90, 4),
(90, 5),
(90, 6),
(90, 7),
(90, 8),
(90, 9),
(90, 10),
(91, 1),
(91, 2),
(91, 3),
(91, 4),
(91, 5),
(91, 6),
(91, 7),
(91, 8),
(91, 9),
(91, 10),
(92, 1),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(92, 6),
(92, 7),
(92, 8),
(92, 9),
(92, 10),
(93, 1),
(93, 2),
(93, 3),
(93, 4),
(93, 5),
(93, 6),
(93, 7),
(93, 8),
(93, 9),
(93, 10),
(94, 1),
(94, 2),
(94, 3),
(94, 4),
(94, 5),
(94, 6),
(94, 7),
(94, 8),
(94, 9),
(94, 10),
(95, 1),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(95, 6),
(95, 7),
(95, 8),
(95, 9),
(95, 10),
(96, 1),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(96, 6),
(96, 7),
(96, 8),
(96, 9),
(96, 10),
(97, 1),
(97, 2),
(97, 3),
(97, 4),
(97, 5),
(97, 6),
(97, 7),
(97, 8),
(97, 9),
(97, 10),
(98, 1),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(98, 6),
(98, 7),
(98, 8),
(98, 9),
(98, 10),
(99, 1),
(99, 2),
(99, 3),
(99, 4),
(99, 5),
(99, 6),
(99, 7),
(99, 8),
(99, 9),
(99, 10),
(100, 1),
(100, 2),
(100, 3),
(100, 4),
(100, 5),
(100, 6),
(100, 7),
(100, 8),
(100, 9),
(100, 10),
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(101, 5),
(101, 6),
(101, 7),
(101, 8),
(101, 9),
(101, 10),
(102, 1),
(102, 2),
(102, 3),
(102, 4),
(102, 5),
(102, 6),
(102, 7),
(102, 8),
(102, 9),
(102, 10),
(103, 1),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(103, 6),
(103, 7),
(103, 8),
(103, 9),
(103, 10),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(104, 6),
(104, 7),
(104, 8),
(104, 9),
(104, 10),
(107, 1),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(107, 6),
(107, 7),
(107, 9),
(107, 21),
(107, 22),
(107, 23),
(107, 24),
(107, 25),
(107, 26),
(107, 27),
(107, 28),
(107, 29),
(107, 30),
(107, 31),
(107, 32),
(107, 33),
(107, 34),
(107, 35),
(107, 36),
(107, 37),
(107, 38),
(107, 40);

-- --------------------------------------------------------

--
-- Structure de la table `bonus`
--

CREATE TABLE `bonus` (
  `NomBonus` varchar(20) NOT NULL,
  `DescriptionBonus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demandeamis`
--

CREATE TABLE `demandeamis` (
  `IDCompte` int(4) NOT NULL,
  `IDCompte2` int(4) NOT NULL,
  `MessageDemandeAmis` varchar(40) DEFAULT NULL,
  `DateDemandeAmis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demandeguilde`
--

CREATE TABLE `demandeguilde` (
  `IDGuilde` int(4) NOT NULL,
  `IDCompte` int(4) NOT NULL,
  `MessageDemandeGuilde` varchar(40) DEFAULT NULL,
  `DateDemandeGuilde` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `défensequotidienne`
--

CREATE TABLE `défensequotidienne` (
  `IDCompte` int(4) NOT NULL,
  `D1` int(4) DEFAULT NULL,
  `D2` int(4) DEFAULT NULL,
  `D3` int(4) DEFAULT NULL,
  `D4` int(4) DEFAULT NULL,
  `D5` int(4) DEFAULT NULL,
  `D6` int(4) DEFAULT NULL,
  `D7` int(4) DEFAULT NULL,
  `D8` int(4) DEFAULT NULL,
  `D9` int(4) DEFAULT NULL,
  `D10` int(4) DEFAULT NULL,
  `D11` int(4) DEFAULT NULL,
  `D12` int(4) DEFAULT NULL,
  `D13` int(4) DEFAULT NULL,
  `D14` int(4) DEFAULT NULL,
  `D15` int(4) DEFAULT NULL,
  `D16` int(4) DEFAULT NULL,
  `D17` int(4) DEFAULT NULL,
  `D18` int(4) DEFAULT NULL,
  `D19` int(4) DEFAULT NULL,
  `D20` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `défensequotidienne`
--

INSERT INTO `défensequotidienne` (`IDCompte`, `D1`, `D2`, `D3`, `D4`, `D5`, `D6`, `D7`, `D8`, `D9`, `D10`, `D11`, `D12`, `D13`, `D14`, `D15`, `D16`, `D17`, `D18`, `D19`, `D20`) VALUES
(74, 87, 95, 98, 102, 89, 94, 83, 100, 90, 85, 99, 97, 101, 103, 88, 74, 93, 86, 84, 104),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 83, 93, 87, 89, 97, 101, 96, 88, 92, 86, 94, 84, 74, 90, 103, 95, 102, 91, 98, 104),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `guilde`
--

CREATE TABLE `guilde` (
  `IDGuilde` int(4) NOT NULL,
  `IDCompte` int(4) NOT NULL,
  `NomGuilde` varchar(20) DEFAULT NULL,
  `DescriptionGuilde` varchar(30) DEFAULT NULL,
  `NiveauGuilde` int(4) DEFAULT NULL,
  `PartiesJouées` int(6) DEFAULT NULL,
  `PartiesGagnées` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `guildevguilde`
--

CREATE TABLE `guildevguilde` (
  `IDGuilde` int(4) NOT NULL,
  `IDGuilde2` int(4) NOT NULL,
  `PointGuilde` int(4) DEFAULT NULL,
  `PointGuilde2` int(4) DEFAULT NULL,
  `IDQuestionnaireGuilde` int(4) DEFAULT NULL,
  `IDQuestionnaireGuilde2` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `infocompte`
--

CREATE TABLE `infocompte` (
  `IDCompte` int(4) NOT NULL,
  `NDCCompte` varchar(16) DEFAULT NULL,
  `MDPCompte` varchar(16) DEFAULT NULL,
  `PseudoCompte` varchar(16) DEFAULT NULL,
  `TitreCompte` varchar(50) NOT NULL DEFAULT 'Initié',
  `PrenomUtilisateur` varchar(16) DEFAULT NULL,
  `NomUtilisateur` varchar(16) DEFAULT NULL,
  `emailUtilisateur` varchar(30) DEFAULT NULL,
  `AgeUtilisateur` int(3) DEFAULT NULL,
  `PartiesJouéesAtt` int(6) DEFAULT NULL,
  `PartiesPerduesAtt` int(6) DEFAULT NULL,
  `PartiesJouéesDeff` int(6) DEFAULT NULL,
  `PartiesPerduesDeff` int(6) DEFAULT NULL,
  `Privilège` varchar(10) DEFAULT NULL,
  `PointsSolo` int(10) NOT NULL,
  `PointsMulti` int(10) NOT NULL,
  `Q1` int(4) DEFAULT NULL,
  `Q2` int(4) DEFAULT NULL,
  `Q3` int(4) DEFAULT NULL,
  `Q4` int(4) DEFAULT NULL,
  `Q5` int(4) DEFAULT NULL,
  `Q6` int(4) DEFAULT NULL,
  `Q7` int(4) DEFAULT NULL,
  `Q8` int(4) DEFAULT NULL,
  `Q9` int(4) DEFAULT NULL,
  `Q10` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `infocompte`
--

INSERT INTO `infocompte` (`IDCompte`, `NDCCompte`, `MDPCompte`, `PseudoCompte`, `TitreCompte`, `PrenomUtilisateur`, `NomUtilisateur`, `emailUtilisateur`, `AgeUtilisateur`, `PartiesJouéesAtt`, `PartiesPerduesAtt`, `PartiesJouéesDeff`, `PartiesPerduesDeff`, `Privilège`, `PointsSolo`, `PointsMulti`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`) VALUES
(74, '', '', 'Nykun', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 479, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(83, '', '', 'qdrgsdfghjdfhj', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(84, '', '', 'dsghyfdhjfggsrfd', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(85, '', '', 'dgdfgjhsrtge', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(86, '', '', 'ghyjyudtysertrt', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(87, '', '', 'fdghfghjcvxfdgs', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(88, '', '', 'xfghgfhjfdtghsrt', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(89, '', '', 'hjkghjkhglhngh', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(90, '', '', 'uiiouiophjkbvjn,', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(91, '', '', 'sgtfsfferhjjgj', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(92, '', '', 'reterze45', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(93, '', '', 'dfgdfgkhjlm456', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(94, '', '', 'gfhjfdghxdgfcvgh', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(95, '', '', 'k,jjkghdgdf', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(96, '', '', '456785645bdfgdfg', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(97, '', '', '4545641fgrtrhgjh', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(98, '', '', 'dfghfghjgfjbvn', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(99, '', '', 'tertetdfg', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(100, '', '', 'cfhjhgkjblk', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(101, '', '', 'desrtxfdghcfgjh', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(102, '', '', 'xdfghcvhjvbk', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(103, '', '', 'zerzrzrfdgdgh', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(104, '', '', 'vghkighjl', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(105, '', '', 'vb,djl', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '', '', 'fghgkhj', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '', '', 'dfgdfgj', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ladder`
--

CREATE TABLE `ladder` (
  `IDCompte` int(4) NOT NULL,
  `PointsSolo` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ladderguilde`
--

CREATE TABLE `ladderguilde` (
  `IDGuilde` int(4) NOT NULL,
  `PointsGuilde` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `possèdeamis`
--

CREATE TABLE `possèdeamis` (
  `IDCompte` int(4) NOT NULL,
  `IDCompte2` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `possèdeavatar`
--

CREATE TABLE `possèdeavatar` (
  `IDCompte` int(4) NOT NULL,
  `NomAvatar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `possèdeavatar`
--

INSERT INTO `possèdeavatar` (`IDCompte`, `NomAvatar`) VALUES
(74, 'Avatar 3'),
(83, 'Avatar 3'),
(85, 'Avatar 3'),
(86, 'Avatar 3'),
(87, 'Avatar 3'),
(88, 'Avatar 3'),
(89, 'Avatar 3'),
(91, 'Avatar 3'),
(92, 'Avatar 3'),
(93, 'Avatar 3'),
(95, 'Avatar 3'),
(96, 'Avatar 3'),
(97, 'Avatar 3'),
(98, 'Avatar 3'),
(99, 'Avatar 3'),
(100, 'Avatar 3'),
(101, 'Avatar 3'),
(102, 'Avatar 3'),
(103, 'Avatar 3'),
(104, 'Avatar 3'),
(105, 'Avatar 3'),
(106, 'Avatar 3'),
(107, 'Avatar 3');

-- --------------------------------------------------------

--
-- Structure de la table `propositionquestion`
--

CREATE TABLE `propositionquestion` (
  `IDProposition` int(6) NOT NULL,
  `IDCompte` int(4) NOT NULL,
  `NomThème` varchar(20) DEFAULT NULL,
  `NomSujet` varchar(20) DEFAULT NULL,
  `Question` varchar(50) DEFAULT NULL,
  `bonnerep` varchar(20) DEFAULT NULL,
  `mauvaiserep1` varchar(20) DEFAULT NULL,
  `mauvaiserep2` varchar(20) DEFAULT NULL,
  `mauvaiserep3` varchar(20) DEFAULT NULL,
  `Valider` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `propositionsujet`
--

CREATE TABLE `propositionsujet` (
  `IDProposition` int(6) NOT NULL,
  `IDCompte` int(4) NOT NULL,
  `NomSujet` varchar(20) DEFAULT NULL,
  `DescriptionSujet` varchar(50) DEFAULT NULL,
  `likes` int(4) DEFAULT NULL,
  `dislikes` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `NomThème` varchar(20) DEFAULT NULL,
  `NomSujet` varchar(20) DEFAULT NULL,
  `IDQuestion` int(4) NOT NULL,
  `Question` text,
  `bonnerep` varchar(50) DEFAULT NULL,
  `mauvaiserep1` varchar(50) DEFAULT NULL,
  `mauvaiserep2` varchar(50) DEFAULT NULL,
  `mauvaiserep3` varchar(50) DEFAULT NULL,
  `NvQuestion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`NomThème`, `NomSujet`, `IDQuestion`, `Question`, `bonnerep`, `mauvaiserep1`, `mauvaiserep2`, `mauvaiserep3`, `NvQuestion`) VALUES
('Sciences', 'Géométrie', 1, 'Question 1', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 2, 'Question 2', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 3, 'Question 3', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 4, 'Question 4', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 5, 'Question 5', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 6, 'Question 6', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 7, 'Question 7', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 8, 'Question 8', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 9, 'Question 9', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 10, 'Question 10', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 3),
('Sciences', 'Mathématiques', 11, 'Question 11', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Mathématiques', 12, 'Question 12', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Mathématiques', 13, 'Question 13', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Mathématiques', 14, 'Question 14', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Mathématiques', 15, 'Question 15', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Mathématiques', 16, 'Question 16', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Mathématiques', 17, 'Question 17', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Mathématiques', 18, 'Question 18', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Mathématiques', 19, 'Question 19', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Mathématiques', 20, 'Question 20', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 3),
('Sciences', 'Géométrie', 21, 'Question 1', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 22, 'Question 2', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 23, 'Question 3', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 24, 'Question 4', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 25, 'Question 5', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 26, 'Question 6', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 27, 'Question 7', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 28, 'Question 8', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 29, 'Question 9', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 30, 'Question 10', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 3),
('Sciences', 'Géométrie', 31, 'Question 1', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 32, 'Question 2', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 33, 'Question 3', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 34, 'Question 4', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 35, 'Question 5', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 1),
('Sciences', 'Géométrie', 36, 'Question 6', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 37, 'Question 7', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 38, 'Question 8', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 39, 'Question 9', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 2),
('Sciences', 'Géométrie', 40, 'Question 10', 'Bonne réponse', 'Mauvaise réponse 1', 'Mauvaise réponse 2', 'Mauvaise réponse 3', 3);

-- --------------------------------------------------------

--
-- Structure de la table `succès`
--

CREATE TABLE `succès` (
  `NomSuccès` varchar(20) NOT NULL,
  `DescriptionSuccès` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `NomSujet` varchar(20) NOT NULL,
  `DescriptionSujet` text,
  `NomThème` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `sujet`
--

INSERT INTO `sujet` (`NomSujet`, `DescriptionSujet`, `NomThème`) VALUES
('Chimie', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Sciences'),
('Géologie', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Sciences'),
('Géométrie', 'Science des mathématiques étudiant des figures dans le plan et l\'espace.', 'Sciences'),
('Mathématiques', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Sciences'),
('Physique', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Sciences'),
('SVT', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Sciences');

-- --------------------------------------------------------

--
-- Structure de la table `tchat`
--

CREATE TABLE `tchat` (
  `IDMessage` int(6) NOT NULL,
  `IDCompte` int(4) NOT NULL,
  `IDDestinataire` int(4) DEFAULT NULL,
  `Message` varchar(30) DEFAULT NULL,
  `DateMessage` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `thèmequestion`
--

CREATE TABLE `thèmequestion` (
  `NomThème` varchar(20) NOT NULL,
  `DescriptionSujet` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `thèmequestion`
--

INSERT INTO `thèmequestion` (`NomThème`, `DescriptionSujet`) VALUES
('Arts', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 1'),
('Littérature', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 2'),
('Sciences', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 3');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adébloquessuccès`
--
ALTER TABLE `adébloquessuccès`
  ADD PRIMARY KEY (`NomSuccès`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`);

--
-- Index pour la table `adébloquésujet`
--
ALTER TABLE `adébloquésujet`
  ADD PRIMARY KEY (`IDCompte`,`NomSujet`),
  ADD KEY `adébloquésujet_ibfk2` (`NomSujet`);

--
-- Index pour la table `appartientguilde`
--
ALTER TABLE `appartientguilde`
  ADD PRIMARY KEY (`IDGuilde`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`);

--
-- Index pour la table `associéavatar`
--
ALTER TABLE `associéavatar`
  ADD PRIMARY KEY (`NomAvatar`,`NomThème`),
  ADD KEY `NomThème` (`NomThème`);

--
-- Index pour la table `banquedequestion`
--
ALTER TABLE `banquedequestion`
  ADD PRIMARY KEY (`IDCompte`,`IDQuestion`),
  ADD KEY `IDQuestion` (`IDQuestion`);

--
-- Index pour la table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`NomBonus`);

--
-- Index pour la table `demandeamis`
--
ALTER TABLE `demandeamis`
  ADD PRIMARY KEY (`IDCompte`,`IDCompte2`),
  ADD KEY `IDCompte2` (`IDCompte2`);

--
-- Index pour la table `demandeguilde`
--
ALTER TABLE `demandeguilde`
  ADD PRIMARY KEY (`IDCompte`,`IDGuilde`),
  ADD KEY `IDGuilde` (`IDGuilde`);

--
-- Index pour la table `défensequotidienne`
--
ALTER TABLE `défensequotidienne`
  ADD PRIMARY KEY (`IDCompte`),
  ADD KEY `défensequotidienne_ibfk_1` (`D1`),
  ADD KEY `défensequotidienne_ibfk_2` (`D2`),
  ADD KEY `défensequotidienne_ibfk_3` (`D3`),
  ADD KEY `défensequotidienne_ibfk_4` (`D4`),
  ADD KEY `défensequotidienne_ibfk_5` (`D5`),
  ADD KEY `défensequotidienne_ibfk_6` (`D6`),
  ADD KEY `défensequotidienne_ibfk_7` (`D7`),
  ADD KEY `défensequotidienne_ibfk_8` (`D8`),
  ADD KEY `défensequotidienne_ibfk_9` (`D9`),
  ADD KEY `défensequotidienne_ibfk_10` (`D10`),
  ADD KEY `défensequotidienne_ibfk_11` (`D11`),
  ADD KEY `défensequotidienne_ibfk_12` (`D12`),
  ADD KEY `défensequotidienne_ibfk_13` (`D13`),
  ADD KEY `défensequotidienne_ibfk_14` (`D14`),
  ADD KEY `défensequotidienne_ibfk_15` (`D15`),
  ADD KEY `défensequotidienne_ibfk_16` (`D16`),
  ADD KEY `défensequotidienne_ibfk_17` (`D17`),
  ADD KEY `défensequotidienne_ibfk_18` (`D18`),
  ADD KEY `défensequotidienne_ibfk_19` (`D19`),
  ADD KEY `défensequotidienne_ibfk_20` (`D20`);

--
-- Index pour la table `guilde`
--
ALTER TABLE `guilde`
  ADD PRIMARY KEY (`IDGuilde`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`);

--
-- Index pour la table `guildevguilde`
--
ALTER TABLE `guildevguilde`
  ADD PRIMARY KEY (`IDGuilde`,`IDGuilde2`),
  ADD KEY `IDGuilde2` (`IDGuilde2`);

--
-- Index pour la table `infocompte`
--
ALTER TABLE `infocompte`
  ADD PRIMARY KEY (`IDCompte`),
  ADD KEY `infocompte_ibfk_2` (`IDCompte`,`Q2`),
  ADD KEY `infocompte_ibfk_3` (`IDCompte`,`Q3`),
  ADD KEY `infocompte_ibfk_4` (`IDCompte`,`Q4`),
  ADD KEY `infocompte_ibfk_5` (`IDCompte`,`Q5`),
  ADD KEY `infocompte_ibfk_6` (`IDCompte`,`Q6`),
  ADD KEY `infocompte_ibfk_7` (`IDCompte`,`Q7`),
  ADD KEY `infocompte_ibfk_8` (`IDCompte`,`Q8`),
  ADD KEY `infocompte_ibfk_9` (`IDCompte`,`Q9`),
  ADD KEY `infocompte_ibfk_10` (`IDCompte`,`Q10`),
  ADD KEY `infocompte_ibfk_1` (`IDCompte`,`Q1`);

--
-- Index pour la table `ladder`
--
ALTER TABLE `ladder`
  ADD PRIMARY KEY (`IDCompte`);

--
-- Index pour la table `ladderguilde`
--
ALTER TABLE `ladderguilde`
  ADD PRIMARY KEY (`IDGuilde`);

--
-- Index pour la table `possèdeamis`
--
ALTER TABLE `possèdeamis`
  ADD PRIMARY KEY (`IDCompte`,`IDCompte2`),
  ADD KEY `IDCompte2` (`IDCompte2`);

--
-- Index pour la table `possèdeavatar`
--
ALTER TABLE `possèdeavatar`
  ADD PRIMARY KEY (`NomAvatar`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`);

--
-- Index pour la table `propositionquestion`
--
ALTER TABLE `propositionquestion`
  ADD PRIMARY KEY (`IDProposition`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`),
  ADD KEY `NomSujet` (`NomSujet`),
  ADD KEY `NomThème` (`NomThème`);

--
-- Index pour la table `propositionsujet`
--
ALTER TABLE `propositionsujet`
  ADD PRIMARY KEY (`IDProposition`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`IDQuestion`),
  ADD KEY `NomThème` (`NomThème`),
  ADD KEY `NomSujet` (`NomSujet`);

--
-- Index pour la table `succès`
--
ALTER TABLE `succès`
  ADD PRIMARY KEY (`NomSuccès`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`NomSujet`),
  ADD KEY `possèdeavatar_ibfk` (`NomThème`);

--
-- Index pour la table `tchat`
--
ALTER TABLE `tchat`
  ADD PRIMARY KEY (`IDMessage`,`IDCompte`),
  ADD KEY `IDCompte` (`IDCompte`),
  ADD KEY `IDDestinataire` (`IDDestinataire`);

--
-- Index pour la table `thèmequestion`
--
ALTER TABLE `thèmequestion`
  ADD PRIMARY KEY (`NomThème`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `infocompte`
--
ALTER TABLE `infocompte`
  MODIFY `IDCompte` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `IDQuestion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adébloquessuccès`
--
ALTER TABLE `adébloquessuccès`
  ADD CONSTRAINT `adébloquessuccès_ibfk_1` FOREIGN KEY (`NomSuccès`) REFERENCES `succès` (`NomSuccès`),
  ADD CONSTRAINT `adébloquessuccès_ibfk_2` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `adébloquésujet`
--
ALTER TABLE `adébloquésujet`
  ADD CONSTRAINT `adébloquésujet_ibfk1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `adébloquésujet_ibfk2` FOREIGN KEY (`NomSujet`) REFERENCES `sujet` (`NomSujet`);

--
-- Contraintes pour la table `appartientguilde`
--
ALTER TABLE `appartientguilde`
  ADD CONSTRAINT `appartientguilde_ibfk_1` FOREIGN KEY (`IDGuilde`) REFERENCES `guilde` (`IDGuilde`),
  ADD CONSTRAINT `appartientguilde_ibfk_2` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `associéavatar`
--
ALTER TABLE `associéavatar`
  ADD CONSTRAINT `associéavatar_ibfk_1` FOREIGN KEY (`NomThème`) REFERENCES `thèmequestion` (`NomThème`);

--
-- Contraintes pour la table `banquedequestion`
--
ALTER TABLE `banquedequestion`
  ADD CONSTRAINT `banquedequestion_ibfk` FOREIGN KEY (`IDQuestion`) REFERENCES `question` (`IDQuestion`);

--
-- Contraintes pour la table `demandeamis`
--
ALTER TABLE `demandeamis`
  ADD CONSTRAINT `demandeamis_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `demandeamis_ibfk_2` FOREIGN KEY (`IDCompte2`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `demandeguilde`
--
ALTER TABLE `demandeguilde`
  ADD CONSTRAINT `demandeguilde_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `demandeguilde_ibfk_2` FOREIGN KEY (`IDGuilde`) REFERENCES `guilde` (`IDGuilde`);

--
-- Contraintes pour la table `défensequotidienne`
--
ALTER TABLE `défensequotidienne`
  ADD CONSTRAINT `défensequotidienne_ibfk_1` FOREIGN KEY (`D1`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_10` FOREIGN KEY (`D10`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_11` FOREIGN KEY (`D11`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_12` FOREIGN KEY (`D12`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_13` FOREIGN KEY (`D13`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_14` FOREIGN KEY (`D14`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_15` FOREIGN KEY (`D15`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_16` FOREIGN KEY (`D16`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_17` FOREIGN KEY (`D17`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_18` FOREIGN KEY (`D18`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_19` FOREIGN KEY (`D19`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_2` FOREIGN KEY (`D2`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_20` FOREIGN KEY (`D20`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_21` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_3` FOREIGN KEY (`D3`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_4` FOREIGN KEY (`D4`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_5` FOREIGN KEY (`D5`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_6` FOREIGN KEY (`D6`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_7` FOREIGN KEY (`D7`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_8` FOREIGN KEY (`D8`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_9` FOREIGN KEY (`D9`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `guilde`
--
ALTER TABLE `guilde`
  ADD CONSTRAINT `guilde_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `guildevguilde`
--
ALTER TABLE `guildevguilde`
  ADD CONSTRAINT `guildevguilde_ibfk_1` FOREIGN KEY (`IDGuilde`) REFERENCES `guilde` (`IDGuilde`),
  ADD CONSTRAINT `guildevguilde_ibfk_2` FOREIGN KEY (`IDGuilde2`) REFERENCES `guilde` (`IDGuilde`);

--
-- Contraintes pour la table `infocompte`
--
ALTER TABLE `infocompte`
  ADD CONSTRAINT `infocompte_ibfk_1` FOREIGN KEY (`IDCompte`,`Q1`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_10` FOREIGN KEY (`IDCompte`,`Q10`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_2` FOREIGN KEY (`IDCompte`,`Q2`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_3` FOREIGN KEY (`IDCompte`,`Q3`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_4` FOREIGN KEY (`IDCompte`,`Q4`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_5` FOREIGN KEY (`IDCompte`,`Q5`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_6` FOREIGN KEY (`IDCompte`,`Q6`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_7` FOREIGN KEY (`IDCompte`,`Q7`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_8` FOREIGN KEY (`IDCompte`,`Q8`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`),
  ADD CONSTRAINT `infocompte_ibfk_9` FOREIGN KEY (`IDCompte`,`Q9`) REFERENCES `banquedequestion` (`IDCompte`, `IDQuestion`);

--
-- Contraintes pour la table `ladder`
--
ALTER TABLE `ladder`
  ADD CONSTRAINT `ladder_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `ladderguilde`
--
ALTER TABLE `ladderguilde`
  ADD CONSTRAINT `ladderguilde_ibfk_1` FOREIGN KEY (`IDGuilde`) REFERENCES `guilde` (`IDGuilde`);

--
-- Contraintes pour la table `possèdeamis`
--
ALTER TABLE `possèdeamis`
  ADD CONSTRAINT `possèdeamis_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `possèdeamis_ibfk_2` FOREIGN KEY (`IDCompte2`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `possèdeavatar`
--
ALTER TABLE `possèdeavatar`
  ADD CONSTRAINT `possèdeavatar_ibfk_1` FOREIGN KEY (`NomAvatar`) REFERENCES `associéavatar` (`NomAvatar`),
  ADD CONSTRAINT `possèdeavatar_ibfk_2` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `propositionquestion`
--
ALTER TABLE `propositionquestion`
  ADD CONSTRAINT `propositionquestion_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `propositionquestion_ibfk_2` FOREIGN KEY (`NomSujet`) REFERENCES `sujet` (`NomSujet`),
  ADD CONSTRAINT `propositionquestion_ibfk_3` FOREIGN KEY (`NomThème`) REFERENCES `thèmequestion` (`NomThème`);

--
-- Contraintes pour la table `propositionsujet`
--
ALTER TABLE `propositionsujet`
  ADD CONSTRAINT `propositionsujet_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`NomThème`) REFERENCES `thèmequestion` (`NomThème`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`NomSujet`) REFERENCES `sujet` (`NomSujet`);

--
-- Contraintes pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `possèdeavatar_ibfk` FOREIGN KEY (`NomThème`) REFERENCES `thèmequestion` (`NomThème`);

--
-- Contraintes pour la table `tchat`
--
ALTER TABLE `tchat`
  ADD CONSTRAINT `tchat_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `tchat_ibfk_2` FOREIGN KEY (`IDDestinataire`) REFERENCES `infocompte` (`IDCompte`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
