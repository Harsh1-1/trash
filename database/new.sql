CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`actorid`)
);

INSERT INTO `chambre` (`idChambre`, `nbLit`) VALUES
(1, 2),
(2, 2),
(3, 4),
(4, 4),
(5, 5);

-- --------------------------------------------------------


CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;


INSERT INTO `client` (`idClient`, `nom`, `prenom`, `age`, `adresse`, `telephone`) VALUES
(1, 'TERIEUR', 'Alain', 45, '23 rue de Amar DI', '0456677890'),
(2, 'TERIEUR', 'Alex', 23, '20 allee de Bowie Kend', '0456645891'),
(3, 'PAROLEDOR', 'Carla', 24, 'Salle Eugene, rue Fidele Annamour', '0978357689'),
(4, 'TOULETAN', 'Eugene', 66, '12 avenue du Bob Eau', '0672908767');


CREATE TABLE IF NOT EXISTS `reservation` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `idClient` int(11) NOT NULL,
  `idChambre` int(11) NOT NULL,
  `DateA` date NOT NULL,
  `DateD` date NOT NULL,
  PRIMARY KEY (`idReservation`, `idClient`, `idChambre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;


INSERT INTO `reservation` (`idReservation`, `idClient`, `idChambre`, `DateA`, `DateD`) VALUES
(1, 1, 1, '2013-03-14', '2013-03-28'),
(2, 3, 4, '2013-03-25', '2013-03-31');
