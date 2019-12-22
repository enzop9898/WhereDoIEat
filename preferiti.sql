CREATE TABLE `preferiti` (
  `idPref` int(11) NOT NULL AUTO_INCREMENT,
  `personaUsername` varchar(32) NOT NULL,
  `attivitaIDAttivita` int(10) NOT NULL,
  PRIMARY KEY (`idPref`),
  KEY `personaUsername` (`personaUsername`),
  KEY `attivitaIDAttivita` (`attivitaIDAttivita`),
  CONSTRAINT `preferiti_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `preferiti_ibfk_2` FOREIGN KEY (`attivitaIDAttivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8