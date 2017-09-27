-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 27 Septembre 2017 à 15:47
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `quizz_last`
--

-- --------------------------------------------------------

--
-- Structure de la table `adébloquessuccès`
--

CREATE TABLE `adébloquessuccès` (
  `NomSuccès` varchar(20) NOT NULL,
  `IDCompte` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adébloquessuccès`
--

INSERT INTO `adébloquessuccès` (`NomSuccès`, `IDCompte`) VALUES
('Initié', 1);

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
(1, 'Francais'),
(1, 'Histoire'),
(1, 'Livre'),
(1, 'Mathématique'),
(1, 'Physique'),
(1, 'SVT'),
(24, 'Francais'),
(24, 'Histoire'),
(30, 'Histoire'),
(111, 'Histoire');

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
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 20),
(1, 22),
(1, 23),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(24, 13),
(24, 14),
(24, 15),
(24, 16),
(24, 19),
(24, 20),
(24, 22),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(25, 13),
(25, 14),
(25, 15),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(26, 9),
(26, 10),
(26, 11),
(26, 12),
(26, 13),
(26, 14),
(26, 15),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(27, 11),
(27, 12),
(27, 13),
(27, 14),
(27, 15),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(29, 7),
(29, 8),
(29, 9),
(29, 10),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(29, 15),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(30, 15),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(31, 11),
(31, 12),
(31, 13),
(31, 14),
(31, 15),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(32, 15),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 11),
(33, 12),
(33, 13),
(33, 14),
(33, 15),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(34, 11),
(34, 12),
(34, 13),
(34, 14),
(34, 15),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(35, 6),
(35, 7),
(35, 8),
(35, 9),
(35, 10),
(35, 11),
(35, 12),
(35, 13),
(35, 14),
(35, 15),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(36, 13),
(36, 14),
(36, 15),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(37, 5),
(37, 6),
(37, 7),
(37, 8),
(37, 9),
(37, 10),
(37, 11),
(37, 12),
(37, 13),
(37, 14),
(37, 15),
(38, 1),
(38, 2),
(38, 3),
(38, 4),
(38, 5),
(38, 6),
(38, 7),
(38, 8),
(38, 9),
(38, 10),
(38, 11),
(38, 12),
(38, 13),
(38, 14),
(38, 15),
(39, 1),
(39, 2),
(39, 3),
(39, 4),
(39, 5),
(39, 6),
(39, 7),
(39, 8),
(39, 9),
(39, 10),
(39, 11),
(39, 12),
(39, 13),
(39, 14),
(39, 15),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(40, 7),
(40, 8),
(40, 9),
(40, 10),
(40, 11),
(40, 12),
(40, 13),
(40, 14),
(40, 15),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(41, 8),
(41, 9),
(41, 10),
(41, 11),
(41, 12),
(41, 13),
(41, 14),
(41, 15),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 8),
(42, 9),
(42, 10),
(42, 11),
(42, 12),
(42, 13),
(42, 14),
(42, 15),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(43, 5),
(43, 6),
(43, 7),
(43, 8),
(43, 9),
(43, 10),
(43, 11),
(43, 12),
(43, 13),
(43, 14),
(43, 15),
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
(111, 1),
(111, 4);

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

--
-- Contenu de la table `demandeamis`
--

INSERT INTO `demandeamis` (`IDCompte`, `IDCompte2`, `MessageDemandeAmis`, `DateDemandeAmis`) VALUES
(24, 2, NULL, '0000-00-00'),
(74, 24, NULL, '0000-00-00');

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
  `D12` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `défensequotidienne`
--

INSERT INTO `défensequotidienne` (`IDCompte`, `D1`, `D2`, `D3`, `D4`, `D5`, `D6`, `D7`, `D8`, `D9`, `D10`, `D11`, `D12`) VALUES
(74, 28, 25, 110, 38, 27, 24, 32, 30, 36, 40, 43, 29);

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
(1, 'Jimmy', 'mdp', 'Jimmy', 'Initié', 'Jimmy', 'Avae', 'john.wick@gmail.com', 14, 5, 2, 10, 2, NULL, 5036, 0, 2, 2, 1, 4, 13, 14, 9, 12, 5, 6),
(2, 'John', 'mdp', 'John', 'Initié', NULL, NULL, NULL, NULL, 2, 2, 2, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Steven', 'mdp', 'Steven', 'Initié', NULL, NULL, NULL, NULL, 5, 1, 4, 2, NULL, 67, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(25, 'Thomas', 'mdp', 'Thomas', 'Initié', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(26, 'Dylan', 'mdp', 'Dylan', 'Initié', NULL, NULL, NULL, NULL, 10, 10, 5, 2, NULL, 10000, 600, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(27, 'David', 'mdp', 'David', 'Initié', NULL, NULL, NULL, NULL, 7, 3, 8, 8, NULL, 0, 2100, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(28, 'Patrick', 'mdp', 'Patrick', 'Initié', NULL, NULL, NULL, NULL, 4, 2, 3, 1, NULL, 0, 600, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(29, 'Isacc', 'mdp', 'Isaac', 'Initié', NULL, NULL, NULL, NULL, 3, 2, 9, 2, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(30, 'Perrick', 'mdp', 'Perrick', 'Initié', NULL, NULL, NULL, NULL, 3, 2, 5, 1, NULL, 8000, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(31, 'User8', NULL, 'User8', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 600, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(32, 'User9', NULL, 'User9', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 600, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(33, 'User10', NULL, 'User10', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(34, 'User11', NULL, 'User11', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(35, 'User12', NULL, 'User12', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(36, 'User13', NULL, 'User13', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(37, 'User14', NULL, 'User14', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(38, 'User15', NULL, 'User15', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(39, 'User16', NULL, 'User16', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(40, 'User17', NULL, 'User17', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(41, 'User18', NULL, 'User18', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(42, 'User19', NULL, 'User19', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(43, 'User20', NULL, 'User20', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
(64, 'azerty', '123456789', 'Nykun2', 'Initié', 'Anthony', 'Laude', 'laudeanthony98@gmail.com', 19, NULL, NULL, NULL, NULL, NULL, 5000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Nyk', 'mdp', 'Nykun', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 1180, 1634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'User1', 'mdp', 'qdrgsdfghjdfhj', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'User2', 'mdp', 'dsghyfdhjfggsrfd', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '', '', 'dgdfgjhsrtge', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '', '', 'ghyjyudtysertrt', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '', '', 'fdghfghjcvxfdgs', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '', '', 'xfghgfhjfdtghsrt', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '', '', 'hjkghjkhglhngh', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '', '', 'uiiouiophjkbvjn,', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '', '', 'sgtfsfferhjjgj', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '', '', 'reterze45', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '', '', 'dfgdfgkhjlm456', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '', '', 'gfhjfdghxdgfcvgh', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '', '', 'k,jjkghdgdf', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '', '', '456785645bdfgdfg', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '', '', '4545641fgrtrhgjh', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '', '', 'dfghfghjgfjbvn', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '', '', 'tertetdfg', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '', '', 'cfhjhgkjblk', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '', '', 'desrtxfdghcfgjh', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '', '', 'xdfghcvhjvbk', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '', '', 'zerzrzrfdgdgh', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '', '', 'vghkighjl', 'Initié', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, 'sgfdsdhfsh', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, 'ergfjutfyu', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, 'rfyuyfuisfg', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, 'srrtyufrtuio', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, NULL, 'sertytyifhgjif', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Admin', 'Admin', 'Administrateur', 'Initié', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'NewBie', 'mdp', 'NewBie', 'Initié', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 50012, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Jean', '123456789', 'Jean-Paul', 'Initié', 'Jean', 'Paul', '@mail.com', 1, 0, 0, 0, 0, NULL, 5000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `possèdeamis`
--

CREATE TABLE `possèdeamis` (
  `IDCompte` int(4) NOT NULL,
  `IDCompte2` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `possèdeamis`
--

INSERT INTO `possèdeamis` (`IDCompte`, `IDCompte2`) VALUES
(1, 2),
(1, 24),
(1, 25),
(2, 1),
(24, 64);

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
(24, 'Avatar 2'),
(25, 'Avatar 2'),
(26, 'Avatar 2'),
(27, 'Avatar 2'),
(28, 'Avatar 2'),
(29, 'Avatar 2'),
(30, 'Avatar 2'),
(31, 'Avatar 2'),
(32, 'Avatar 2'),
(33, 'Avatar 2'),
(34, 'Avatar 2'),
(35, 'Avatar 2'),
(36, 'Avatar 2'),
(37, 'Avatar 2'),
(38, 'Avatar 2'),
(39, 'Avatar 2'),
(40, 'Avatar 2'),
(41, 'Avatar 2'),
(42, 'Avatar 2'),
(43, 'Avatar 2');

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
('Littérature', 'Histoire', 1, 'En quelle année les femmes obtiennent le droit de vote en france ?', '1944', '1950', '1964', '1979', 1),
('Littérature', 'Histoire', 2, 'Qui est le premier président de la Vème République ?', 'De Gaulle', 'Le brun', 'Pompidou', 'Mitterand', 1),
('Littérature', 'Histoire', 3, 'Date de l\'armistice de la 1ère Guerre Mondiale ?', '11 novembre 1918', '10 septembre 1914', '14 juillet 1918', '23 mars 1920', 1),
('Littérature', 'Histoire', 4, 'Année de la chute du mur de Berlin ?', '1989', '1944', '1979', '1984', 1),
('Scientifique', 'Mathématique', 5, 'Combien fait: i^2    ', '-1', 'ii', '2i', '1', 1),
('Scientifique', 'Mathématique', 6, 'Quel est le discriminent d\'une équation du second degrès ?', 'b^2 - 4ac', '2*a-4bc', '8c+2ab', 'ax+b', 1),
('Scientifique', 'Physique', 7, 'Laquelle de ces unités correspond a une accélération ?', 'Cm.s^-2', 'm.s', 'd.s^2', 'km^2', 1),
('Scientifique', 'Physique', 8, 'Aproximativement, quel est la vitesse du son ?', '300m.s^-1', '400m.s^-1', '2km.s^-1', '300km.s-1', 1),
('Littérature', 'Francais', 9, 'Que signifie C.O.D ?', 'Complément d\'objet direct', 'Call of duty', 'Complément d\'objet durable', 'Correction d\'objet direct', 1),
('Scientifique', 'SVT', 10, 'Par quel mécanisme les plantes vertes produisent de l\'oxigene ?', 'La photosynthèse', 'La polarisation', 'La floraison', 'L\'oxygenation', 1),
('Scientifique', 'SVT', 11, 'Que signifie ADN ?', 'Acide désoxyribo nucleique', 'Acide doremifasolasido nul', 'Anime digital network ', ' Acide drosofil natif', 1),
('Littérature', 'Francais', 12, 'Tu rentrais en voiture.\r\nQuel est le temps du verbe rentrer.', 'Imparfait de l\'indicatif', 'Présent de l\'indicatif', 'Futur simple', 'Parfait du subjonctif', 1),
('Littérature', 'Livre', 13, 'Qui a écrit Le Bourgeois Gentilhomme ?', 'Moliere', 'Victore Hugo', 'Leornard de Vinci', 'Gentil Bourgeaois', 1),
('Littérature', 'Livre', 14, 'Qui a écrit demain dès l\'aube?', 'Victor Hugo', 'Jean Monnet', 'Arthur Rimbaud', 'Charles Beaudelaire', 1),
('Scientifique', 'SVT', 15, 'VIDE', 'VIDE', 'VIDE', 'VIDE', 'VIDE', 0),
('Littérature', 'Francais', 16, 'Lequel de ces mots est du genre féminin ?', 'Geôle', 'Pétale', 'Chenet', 'Vision', 1),
('Littérature', 'Francais', 17, 'Quel est le verbe pour le mot \"plant\" ?', 'Planter', 'Plantiner', 'Plantouiller', 'Planquer', 1),
('Littérature', 'Francais', 18, 'Que signifie le mot \"mousse\" dans cette phrase \"La mousse pousse au pied des arbres\" ?', 'C\'est un dessert', 'C\'est une plante', 'C\'est un jeune matelot', 'C\'est des bulles de savon', 1),
('Littérature', 'Francais', 19, 'Un mot de cette liste n\'est pas un synonyme des autres. Lequel est-ce ?', 'Avaler', 'Manger', 'Engouffrer', 'Parler', 1),
('Littérature', 'Francais', 20, 'Quel préfixe utilise-t-on pour dire le contraire du mot \"content\" ?', 'Mé', 'Dé', 'A', 'Mal', 2),
('Littérature', 'Francais', 21, 'Trouvez le bon homonyme pour \"outil pour couper du bois ou du métal\" ?', 'Scie', 'Six', 'Si', 'ci', 3),
('Littérature', 'Francais', 22, 'Quel préfixe emploie-t-on au mot \"tasser\" ?', 'en', 'em', 'an', 'am', 1),
('Littérature', 'Francais', 23, 'Le nom qui provient du verbe \"passer\", c\'est :', 'Passage', 'Passement', 'Passation', 'Passion', 1);

-- --------------------------------------------------------

--
-- Structure de la table `succès`
--

CREATE TABLE `succès` (
  `NomSuccès` varchar(20) NOT NULL,
  `DescriptionSuccès` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `succès`
--

INSERT INTO `succès` (`NomSuccès`, `DescriptionSuccès`) VALUES
('Initié', NULL);

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
('Francais', NULL, 'Littérature'),
('Histoire', NULL, 'Littérature'),
('Livre', NULL, 'Littérature'),
('Mathématique', NULL, 'Scientifique'),
('Physique', NULL, 'Scientifique'),
('SVT', NULL, 'Scientifique');

-- --------------------------------------------------------

--
-- Structure de la table `tchat`
--

CREATE TABLE `tchat` (
  `idmsg` int(20) NOT NULL,
  `idj1` int(20) NOT NULL,
  `idj2` int(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tchat`
--

INSERT INTO `tchat` (`idmsg`, `idj1`, `idj2`, `message`) VALUES
(1, 1, 2, 'Bonjour'),
(2, 2, 1, 'salut\n'),
(3, 24, 1, 'Hello'),
(4, 24, 64, 'Hello'),
(5, 24, 64, 'Yo'),
(6, 24, 1, '  \n'),
(7, 24, 1, '  \n'),
(8, 24, 1, '  \n'),
(9, 24, 1, '  \n'),
(10, 24, 1, 'Olaaa\n'),
(11, 24, 1, 'pk    marche pas ><\n'),
(12, 24, 1, 'je comprends pas\n');

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
('Sciences', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 3'),
('Scientifique', NULL);

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
-- Index pour la table `demandeamis`
--
ALTER TABLE `demandeamis`
  ADD PRIMARY KEY (`IDCompte`,`IDCompte2`),
  ADD KEY `IDCompte2` (`IDCompte2`);

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
  ADD KEY `défensequotidienne_ibfk_12` (`D12`);

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
  ADD PRIMARY KEY (`idmsg`,`idj1`,`idj2`),
  ADD KEY `joueur1` (`idj1`),
  ADD KEY `joueur2` (`idj2`);

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
  MODIFY `IDCompte` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `IDQuestion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `tchat`
--
ALTER TABLE `tchat`
  MODIFY `idmsg` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
-- Contraintes pour la table `défensequotidienne`
--
ALTER TABLE `défensequotidienne`
  ADD CONSTRAINT `défensequotidienne_ibfk_1` FOREIGN KEY (`D1`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_10` FOREIGN KEY (`D10`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_11` FOREIGN KEY (`D11`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_12` FOREIGN KEY (`D12`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_2` FOREIGN KEY (`D2`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_21` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_3` FOREIGN KEY (`D3`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_4` FOREIGN KEY (`D4`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_5` FOREIGN KEY (`D5`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_6` FOREIGN KEY (`D6`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_7` FOREIGN KEY (`D7`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_8` FOREIGN KEY (`D8`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `défensequotidienne_ibfk_9` FOREIGN KEY (`D9`) REFERENCES `infocompte` (`IDCompte`);

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
  ADD CONSTRAINT `joueur1` FOREIGN KEY (`idj1`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `joueur2` FOREIGN KEY (`idj2`) REFERENCES `infocompte` (`IDCompte`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
