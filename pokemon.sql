-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 02 mars 2021 à 21:41
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `numberPokemon` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `info` text NOT NULL,
  `weaknesses` text NOT NULL,
  `superiority` text NOT NULL,
  `resistance` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`numberPokemon`, `name`, `type`, `info`, `weaknesses`, `superiority`, `resistance`, `image`) VALUES
(1, 'Bulbizarre', 'a:2:{i:0;s:6:\"Plante\";i:1;s:6:\"Poison\";}', 'Il y a une graine sur son dos depuis sa naissance. Elle grossit un peu chaque jour.', 'a:5:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:5:\"Glace\";i:3;s:3:\"Psy\";i:4;s:7:\"Insecte\";}', 'a:3:{i:0;s:3:\"Eau\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:3:\"Eau\";i:1;s:6:\"Plante\";i:2;s:10:\"Electrique\";i:3;s:3:\"Sol\";}', '1.png'),
(2, 'Herbizarre', 'a:2:{i:0;s:6:\"Plante\";i:1;s:6:\"Poison\";}', 'Son bulbe dorsal est devenu si gros qu\'il ne peut plus se tenir sur ses pattes postÃ©rieures.', 'a:5:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:5:\"Glace\";i:3;s:3:\"Psy\";i:4;s:7:\"Insecte\";}', 'a:3:{i:0;s:3:\"Eau\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:3:\"Eau\";i:1;s:6:\"Plante\";i:2;s:10:\"Electrique\";i:3;s:3:\"Sol\";}', '2.png'),
(3, 'Florizarre', 'a:2:{i:0;s:6:\"Plante\";i:1;s:6:\"Poison\";}', 'Sa plante donne une grosse fleur quand elle absorbe les rayons du soleil. Il est toujours Ã  la recherche des endroits les plus ensoleillÃ©s.', 'a:5:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:5:\"Glace\";i:3;s:3:\"Psy\";i:4;s:7:\"Insecte\";}', 'a:3:{i:0;s:3:\"Eau\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:3:\"Eau\";i:1;s:6:\"Plante\";i:2;s:10:\"Electrique\";i:3;s:3:\"Sol\";}', '3.png'),
(4, 'SalamÃ¨che', 'a:1:{i:0;s:3:\"Feu\";}', 'Il prÃ©fÃ¨re ce qui est chaud. En cas de pluie, de la vapeur se forme autour de sa queue.', 'a:3:{i:0;s:3:\"Eau\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:6:\"Plante\";i:1;s:5:\"Glace\";i:2;s:7:\"Insecte\";i:3;s:5:\"Acier\";}', 'a:6:{i:0;s:3:\"Feu\";i:1;s:6:\"Plante\";i:2;s:5:\"Glace\";i:3;s:7:\"Insecte\";i:4;s:5:\"Acier\";i:5;s:4:\"FÃ©e\";}', '4.png'),
(5, 'Reptincel', 'a:1:{i:0;s:3:\"Feu\";}', 'Il est trÃ¨s brutal. En combat, il se sert de ses griffes acÃ©rÃ©es et de sa queue enflammÃ©e pour mettre en piÃ¨ces ses adversaires.', 'a:3:{i:0;s:3:\"Eau\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:6:\"Plante\";i:1;s:5:\"Glace\";i:2;s:7:\"Insecte\";i:3;s:5:\"Acier\";}', 'a:6:{i:0;s:3:\"Feu\";i:1;s:6:\"Plante\";i:2;s:5:\"Glace\";i:3;s:7:\"Insecte\";i:4;s:5:\"Acier\";i:5;s:4:\"FÃ©e\";}', '5.png'),
(6, 'Dracaufeu', 'a:2:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";}', 'Son souffle brÃ»lant peut faire fondre la roche. Il est parfois la cause d\'incendies de forÃªt', 'a:3:{i:0;s:3:\"Eau\";i:1;s:10:\"Electrique\";i:2;s:5:\"Roche\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:5:\"Glace\";i:2;s:7:\"Insecte\";i:3;s:5:\"Acier\";i:4;s:6:\"Combat\";}', 'a:6:{i:0;s:3:\"Feu\";i:1;s:6:\"Plante\";i:2;s:7:\"Insecte\";i:3;s:5:\"Acier\";i:4;s:6:\"Combat\";i:5;s:4:\"FÃ©e\";}', '6.png'),
(7, 'Carapuce', 'a:1:{i:0;s:3:\"Eau\";}', 'Quand il rentre son cou dans sa carapace, il peut projeter de l\'eau Ã  haute pression. ', 'a:2:{i:0;s:6:\"Plante\";i:1;s:10:\"Electrique\";}', 'a:3:{i:0;s:3:\"Feu\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:3:\"Feu\";i:1;s:3:\"Eau\";i:2;s:5:\"Glace\";i:3;s:5:\"Acier\";}', '7.png'),
(8, 'Carabaffe', 'a:1:{i:0;s:3:\"Eau\";}', 'Il est considÃ©rÃ© comme un symbole de longÃ©vitÃ©. On reconnaÃ®t les spÃ©cimens les plus Ã¢gÃ©s Ã  la mousse qui pousse sur leur carapace. ', 'a:2:{i:0;s:6:\"Plante\";i:1;s:10:\"Electrique\";}', 'a:3:{i:0;s:3:\"Feu\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:3:\"Feu\";i:1;s:3:\"Eau\";i:2;s:5:\"Glace\";i:3;s:5:\"Acier\";}', '8.png'),
(9, 'Tortank', 'a:1:{i:0;s:3:\"Eau\";}', 'Il Ã©crase ses adversaires de tout son poids pour leur faire perdre connaissance. Il rentre dans sa carapace s\'il se sent en danger. ', 'a:2:{i:0;s:6:\"Plante\";i:1;s:10:\"Electrique\";}', 'a:3:{i:0;s:3:\"Feu\";i:1;s:5:\"Roche\";i:2;s:3:\"Sol\";}', 'a:4:{i:0;s:3:\"Feu\";i:1;s:3:\"Eau\";i:2;s:5:\"Glace\";i:3;s:5:\"Acier\";}', '9.png'),
(10, 'Chenipan', 'a:1:{i:0;s:7:\"Insecte\";}', 'Pour se protÃ©ger, il Ã©met par ses antennes une odeur nausÃ©abonde qui fait fuir ses ennemis. ', 'a:3:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Psy\";i:2;s:7:\"Tenebre\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Sol\";i:2;s:6:\"Combat\";}', '10.png'),
(11, 'Chrysacier', 'a:1:{i:0;s:7:\"Insecte\";}', 'En attendant sa prochaine Ã©volution, il ne peut que durcir sa carapace et rester immobile pour Ã©viter de se faire attaquer.', 'a:3:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Psy\";i:2;s:7:\"Tenebre\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Sol\";i:2;s:6:\"Combat\";}', '11.png'),
(12, 'Papilusion', 'a:2:{i:0;s:3:\"Vol\";i:1;s:7:\"Insecte\";}', 'En combat, il bat des ailes trÃ¨s rapidement pour projeter de la poudre toxique sur ses ennemis. ', 'a:5:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:10:\"Electrique\";i:3;s:5:\"Glace\";i:4;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', '12.png'),
(13, 'Aspicot', 'a:2:{i:0;s:7:\"Insecte\";i:1;s:6:\"Poison\";}', 'L\'aiguillon sur son front est trÃ¨s pointu. Il se cache dans les bois et les hautes herbes, oÃ¹ il se gave de feuilles. ', 'a:4:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:3:\"Psy\";i:3;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Psy\";i:2;s:7:\"Tenebre\";}', 'a:4:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";}', '13.png'),
(14, 'Coconfort', 'a:2:{i:0;s:7:\"Insecte\";i:1;s:6:\"Poison\";}', 'Il peut Ã  peine bouger. Quand il est menacÃ©, il sort parfois son aiguillon pour empoisonner ses ennemis. ', 'a:4:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:3:\"Psy\";i:3;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Psy\";i:2;s:7:\"Tenebre\";}', 'a:4:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";}', '14.png'),
(15, 'Dardargnan', 'a:2:{i:0;s:7:\"Insecte\";i:1;s:6:\"Poison\";}', 'Il se sert de ses trois aiguillons empoisonnÃ©s situÃ©s sur les pattes avant et l\'abdomen pour attaquer sans relÃ¢che ses adversaires. ', 'a:4:{i:0;s:3:\"Feu\";i:1;s:3:\"Vol\";i:2;s:3:\"Psy\";i:3;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:3:\"Psy\";i:2;s:7:\"Tenebre\";}', 'a:4:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";}', '15.png'),
(16, 'Roucool', 'a:2:{i:0;s:6:\"Normal\";i:1;s:3:\"Vol\";}', 'De nature trÃ¨s docile, il prÃ©fÃ¨re projeter du sable pour se dÃ©fendre plutÃ´t que contre-attaquer. ', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Glace\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', '16.png'),
(17, 'Roucoups', 'a:2:{i:0;s:6:\"Normal\";i:1;s:3:\"Vol\";}', 'Ce PokÃ©mon est trÃ¨s endurant. Il survole en permanence son territoire pour chasser. ', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Glace\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', '17.png'),
(18, 'Roucarnage', 'a:2:{i:0;s:6:\"Normal\";i:1;s:3:\"Vol\";}', 'Ce PokÃ©mon vole Ã  Mach 2 quand il chasse. Ses grandes serres sont des armes redoutables.', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Glace\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', '18.png'),
(19, 'Rattata', 'a:1:{i:0;s:6:\"Normal\";}', 'Il peut ronger n\'importe quoi avec ses deux dents. Quand on en voit un, il y en a certainement 40 dans le coin. ', 'a:1:{i:0;s:6:\"Combat\";}', 'N;', 'N;', '19.png'),
(20, 'Rattatac', 'a:1:{i:0;s:6:\"Normal\";}', 'Ses pattes arriÃ¨re sont palmÃ©es. Il peut donc poursuivre sa proie dans les cours d\'eau et les riviÃ¨res. ', 'a:1:{i:0;s:6:\"Combat\";}', 'N;', 'N;', '20.png'),
(21, 'Piafabec', 'a:2:{i:0;s:6:\"Normal\";i:1;s:3:\"Vol\";}', 'Il est incapable de voler Ã  haute altitude. Il se dÃ©place trÃ¨s vite pour protÃ©ger son territoire. ', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Glace\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', '21.png'),
(22, 'Rapasdepic', 'a:2:{i:0;s:6:\"Normal\";i:1;s:3:\"Vol\";}', 'Un PokÃ©mon trÃ¨s ancien. S\'il perÃ§oit un danger, il fuit instantanÃ©ment Ã  haute altitude. ', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Glace\";i:2;s:5:\"Roche\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', 'a:3:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";}', '22.png'),
(23, 'Abo', 'a:1:{i:0;s:6:\"Poison\";}', 'Plus il est Ã¢gÃ©, plus son corps est long. La nuit, il s\'enroule autour de branches d\'arbres pour se reposer. ', 'a:2:{i:0;s:3:\"Psy\";i:1;s:3:\"Sol\";}', 'a:2:{i:0;s:6:\"Plante\";i:1;s:4:\"FÃ©e\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";i:4;s:4:\"FÃ©e\";}', '23.png'),
(24, 'Arbok', 'a:1:{i:0;s:6:\"Poison\";}', 'Des Ã©tudes ont rÃ©vÃ©lÃ© que les marques effrayantes de son corps pouvaient former six motifs diffÃ©rents. ', 'a:2:{i:0;s:3:\"Psy\";i:1;s:3:\"Sol\";}', 'a:2:{i:0;s:6:\"Plante\";i:1;s:4:\"FÃ©e\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";i:4;s:4:\"FÃ©e\";}', '24.png'),
(25, 'Pikachu', 'a:1:{i:0;s:10:\"Electrique\";}', 'Plus la puissance Ã©lectrique de Pikachu est Ã©levÃ©e, plus les poches de ses joues sont extensibles. ', 'a:1:{i:0;s:3:\"Sol\";}', 'a:2:{i:0;s:3:\"Eau\";i:1;s:3:\"Vol\";}', 'a:3:{i:0;s:3:\"Vol\";i:1;s:10:\"Electrique\";i:2;s:5:\"Acier\";}', '25.png'),
(26, 'Raichu', 'a:1:{i:0;s:10:\"Electrique\";}', 'Sa longue queue agit comme une prise de terre qui l\'empÃªche d\'Ãªtre affectÃ© par le courant Ã  haute tension accumulÃ© dans son corps. ', 'a:1:{i:0;s:3:\"Sol\";}', 'a:2:{i:0;s:3:\"Eau\";i:1;s:3:\"Vol\";}', 'a:3:{i:0;s:3:\"Vol\";i:1;s:10:\"Electrique\";i:2;s:5:\"Acier\";}', '26.png'),
(27, 'Sabelette', 'a:1:{i:0;s:3:\"Sol\";}', 'Il aime se rouler dans le sable des zones dÃ©sertiques pour se dÃ©barrasser des traces de terre et d\'humiditÃ© qui lui collent Ã  la peau. ', 'a:3:{i:0;s:3:\"Eau\";i:1;s:6:\"Plante\";i:2;s:5:\"Glace\";}', 'a:5:{i:0;s:3:\"Feu\";i:1;s:10:\"Electrique\";i:2;s:5:\"Roche\";i:3;s:5:\"Acier\";i:4;s:6:\"Poison\";}', 'a:2:{i:0;s:5:\"Roche\";i:1;s:6:\"Poison\";}', '27.png'),
(28, 'Sablaireau', 'a:1:{i:0;s:3:\"Sol\";}', 'Plus son habitat est sec, plus ses Ã©pines dorsales deviennent dures et lisses.', 'a:3:{i:0;s:3:\"Eau\";i:1;s:6:\"Plante\";i:2;s:5:\"Glace\";}', 'a:5:{i:0;s:3:\"Feu\";i:1;s:10:\"Electrique\";i:2;s:5:\"Roche\";i:3;s:5:\"Acier\";i:4;s:6:\"Poison\";}', 'a:2:{i:0;s:5:\"Roche\";i:1;s:6:\"Poison\";}', '28.png'),
(29, 'Nidoranâ™€', 'a:1:{i:0;s:6:\"Poison\";}', 'Son odorat est plus dÃ©veloppÃ© que celui du mÃ¢le. Quand Nidoranâ™€ cherche Ã  manger, il reste dans le sens du vent, quâ€™il dÃ©tecte avec ses vibrisses. ', 'a:2:{i:0;s:3:\"Psy\";i:1;s:3:\"Sol\";}', 'a:2:{i:0;s:6:\"Plante\";i:1;s:4:\"FÃ©e\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";i:4;s:4:\"FÃ©e\";}', '29.png'),
(30, 'Nidorina', 'a:1:{i:0;s:6:\"Poison\";}', 'On pense que sa corne frontale sâ€™est atrophiÃ©e pour lui permettre de nourrir ses petits sans les blesser. ', 'a:2:{i:0;s:3:\"Psy\";i:1;s:3:\"Sol\";}', 'a:2:{i:0;s:6:\"Plante\";i:1;s:4:\"FÃ©e\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";i:4;s:4:\"FÃ©e\";}', '30.png'),
(31, 'Nidoqueen', 'a:2:{i:0;s:3:\"Sol\";i:1;s:6:\"Poison\";}', 'Il est plus douÃ© pour se dÃ©fendre que pour attaquer. GrÃ¢ce Ã  son blindage dâ€™Ã©cailles, il protÃ¨ge ses petits de toute agression. ', 'a:4:{i:0;s:3:\"Eau\";i:1;s:5:\"Glace\";i:2;s:3:\"Psy\";i:3;s:3:\"Sol\";}', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Roche\";i:2;s:6:\"Poison\";}', 'a:3:{i:0;s:5:\"Roche\";i:1;s:6:\"Combat\";i:2;s:6:\"Poison\";}', '31.png'),
(32, 'Nidoranâ™‚', 'a:1:{i:0;s:6:\"Poison\";}', 'Sa corne frontale contient un puissant poison. Les grandes oreilles de ce PokÃ©mon trÃ¨s prudent sont constamment dressÃ©es.', 'a:2:{i:0;s:3:\"Psy\";i:1;s:3:\"Sol\";}', 'a:2:{i:0;s:6:\"Plante\";i:1;s:4:\"FÃ©e\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";i:4;s:4:\"FÃ©e\";}', '32.png'),
(33, 'Nidorino', 'a:1:{i:0;s:6:\"Poison\";}', 'Il erre Ã  la recherche dâ€™une Pierre Lune, brisant tous les rochers sur son passage avec sa corne plus solide quâ€™un diamant. ', 'a:2:{i:0;s:3:\"Psy\";i:1;s:3:\"Sol\";}', 'a:2:{i:0;s:6:\"Plante\";i:1;s:4:\"FÃ©e\";}', 'a:5:{i:0;s:6:\"Plante\";i:1;s:7:\"Insecte\";i:2;s:6:\"Combat\";i:3;s:6:\"Poison\";i:4;s:4:\"FÃ©e\";}', '33.png'),
(34, 'Nidoking', 'a:2:{i:0;s:3:\"Sol\";i:1;s:6:\"Poison\";}', 'Lorsquâ€™il sâ€™Ã©nerve, il devient incontrÃ´lable, mais il retrouve son calme face Ã  Nidoqueen, sa compagne de longue date. ', 'a:4:{i:0;s:3:\"Eau\";i:1;s:5:\"Glace\";i:2;s:3:\"Psy\";i:3;s:3:\"Sol\";}', 'a:3:{i:0;s:10:\"Electrique\";i:1;s:5:\"Roche\";i:2;s:6:\"Poison\";}', 'a:3:{i:0;s:5:\"Roche\";i:1;s:6:\"Combat\";i:2;s:6:\"Poison\";}', '34.png'),
(35, 'MÃ©lofÃ©e', 'a:1:{i:0;s:4:\"FÃ©e\";}', 'On dit que ceux qui voient danser un groupe de MÃ©lofÃ©e sous la pleine lune connaÃ®tront un grand bonheur. ', 'a:2:{i:0;s:5:\"Acier\";i:1;s:6:\"Poison\";}', 'a:3:{i:0;s:6:\"Combat\";i:1;s:6:\"Dragon\";i:2;s:7:\"Tenebre\";}', 'a:3:{i:0;s:7:\"Insecte\";i:1;s:6:\"Combat\";i:2;s:7:\"Tenebre\";}', '35.png'),
(36, 'MÃ©lodelfe', 'a:1:{i:0;s:4:\"FÃ©e\";}', 'Ce PokÃ©mon sâ€™apparente Ã  une petite fÃ©e qui nâ€™apparaÃ®t que rarement devant les humains. Il court se cacher dÃ¨s quâ€™il ressent une prÃ©sence. ', 'a:2:{i:0;s:5:\"Acier\";i:1;s:7:\"Tenebre\";}', 'a:3:{i:0;s:6:\"Combat\";i:1;s:6:\"Dragon\";i:2;s:7:\"Tenebre\";}', 'a:3:{i:0;s:7:\"Insecte\";i:1;s:6:\"Combat\";i:2;s:7:\"Tenebre\";}', '36.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
