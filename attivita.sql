CREATE TABLE `attivita` (
  `idAttivita` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `comune` varchar(20) NOT NULL,
  `oraApertura` int(5) NOT NULL,
  `oraChiusura` int(5) NOT NULL,
  `giornoChiusura` varchar(10) DEFAULT NULL,
  `indirizzo` varchar(40) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `numPosti` int(5) NOT NULL,
  `mappa` varchar(255) DEFAULT NULL,
  `personaUsername` varchar(32) NOT NULL,
  PRIMARY KEY (`idAttivita`),
  KEY `personaUsername` (`personaUsername`),
  CONSTRAINT `attivita_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8