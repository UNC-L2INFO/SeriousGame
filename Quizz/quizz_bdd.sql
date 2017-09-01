-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 01 Septembre 2017 à 07:46
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
  `Privilège` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `infocompte`
--

INSERT INTO `infocompte` (`IDCompte`, `NDCCompte`, `MDPCompte`, `PseudoCompte`, `PrenomUtilisateur`, `NomUtilisateur`, `emailUtilisateur`, `AgeUtilisateur`, `PartiesJouéesAtt`, `PartiesPerduesAtt`, `PartiesJouéesDeff`, `PartiesPerduesDeff`, `Privilège`) VALUES
(49, 'azerty63187', 'triso63187lol', 'Nykun', 'Anthony', 'Laude', 'laudeanthony98@gmail.com', 19, NULL, NULL, NULL, NULL, NULL);

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
(49, 'Avatar 2');

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
  `Question` varchar(50) DEFAULT NULL,
  `bonnerep` varchar(20) DEFAULT NULL,
  `mauvaiserep1` varchar(20) DEFAULT NULL,
  `mauvaiserep2` varchar(20) DEFAULT NULL,
  `mauvaiserep3` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `DescriptionSujet` varchar(30) DEFAULT NULL,
  `NomThème` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
-- Structure de la table `thème`
--

CREATE TABLE `thème` (
  `NomThème` varchar(16) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `thèmequestion`
--

CREATE TABLE `thèmequestion` (
  `NomThème` varchar(20) NOT NULL,
  `IDQuestion` int(4) DEFAULT NULL,
  `DescriptionSujet` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `thèmequestion`
--

INSERT INTO `thèmequestion` (`NomThème`, `IDQuestion`, `DescriptionSujet`) VALUES
('Arts', NULL, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 1'),
('Littérature', NULL, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 2'),
('Sciences', NULL, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\\\'imprimerie depuis les années 1500, \r\n									quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\\\'a pas fait que survivre cinq siècles, mais s\\\'est aussi adapté à la bureautique \r\n									informatique, sans que son contenu n\\\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, \r\n									par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. 3');

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
-- Index pour la table `thème`
--
ALTER TABLE `thème`
  ADD PRIMARY KEY (`NomThème`);

--
-- Index pour la table `thèmequestion`
--
ALTER TABLE `thèmequestion`
  ADD PRIMARY KEY (`NomThème`),
  ADD KEY `IDQuestion` (`IDQuestion`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `infocompte`
--
ALTER TABLE `infocompte`
  MODIFY `IDCompte` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
  ADD CONSTRAINT `banquedequestion_ibfk_1` FOREIGN KEY (`IDQuestion`) REFERENCES `question` (`IDQuestion`);

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
  ADD CONSTRAINT `possèdeavatar_ibfk` FOREIGN KEY (`NomThème`) REFERENCES `thème` (`NomThème`);

--
-- Contraintes pour la table `tchat`
--
ALTER TABLE `tchat`
  ADD CONSTRAINT `tchat_ibfk_1` FOREIGN KEY (`IDCompte`) REFERENCES `infocompte` (`IDCompte`),
  ADD CONSTRAINT `tchat_ibfk_2` FOREIGN KEY (`IDDestinataire`) REFERENCES `infocompte` (`IDCompte`);

--
-- Contraintes pour la table `thèmequestion`
--
ALTER TABLE `thèmequestion`
  ADD CONSTRAINT `thèmequestion_ibfk_1` FOREIGN KEY (`IDQuestion`) REFERENCES `question` (`IDQuestion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
