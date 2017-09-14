-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 14 Septembre 2017 à 10:24
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
(74, 'Mathématiques');

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
(77, 1),
(77, 3),
(77, 4),
(77, 5),
(77, 21),
(77, 22),
(77, 23),
(77, 24),
(77, 29),
(77, 31);

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
  `PrenomUtilisateur` varchar(16) DEFAULT NULL,
  `NomUtilisateur` varchar(16) DEFAULT NULL,
  `emailUtilisateur` varchar(30) DEFAULT NULL,
  `AgeUtilisateur` int(3) DEFAULT NULL,
  `PartiesJouéesAtt` int(6) DEFAULT NULL,
  `PartiesPerduesAtt` int(6) DEFAULT NULL,
  `PartiesJouéesDeff` int(6) DEFAULT NULL,
  `PartiesPerduesDeff` int(6) DEFAULT NULL,
  `Privilège` varchar(10) DEFAULT NULL,
  `PointsSolo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `infocompte`
--

INSERT INTO `infocompte` (`IDCompte`, `NDCCompte`, `MDPCompte`, `PseudoCompte`, `PrenomUtilisateur`, `NomUtilisateur`, `emailUtilisateur`, `AgeUtilisateur`, `PartiesJouéesAtt`, `PartiesPerduesAtt`, `PartiesJouéesDeff`, `PartiesPerduesDeff`, `Privilège`, `PointsSolo`) VALUES
(74, '', '', 'Nykun', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 50),
(75, 'sfhdsfh', '123456789', 'lol', 'qsdfsdfgdfhfdj', 'gsdfgdfghdty', 'qsdfsfhdfghudfd', 19, NULL, NULL, NULL, NULL, NULL, 0),
(76, '', '', 'xD', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0),
(77, '', '', 'dbarres', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0);

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
(77, 'Avatar 3');

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
  ADD PRIMARY KEY (`IDCompte`);

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
  MODIFY `IDCompte` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
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

