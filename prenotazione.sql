CREATE TABLE `prenotazione` (
  `idPren` int(11) NOT NULL,
  `data` date NOT NULL,
  `ora` int(5) NOT NULL,
  `numPosti` int(5) NOT NULL,
  `personaUsername` varchar(32) NOT NULL,
  `attivitaIDAttivita` int(10) NOT NULL,
  PRIMARY KEY (`idPren`),
  KEY `personaUsername` (`personaUsername`),
  KEY `attivitaIDAttivita` (`attivitaIDAttivita`),
  CONSTRAINT `prenotazione_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prenotazione_ibfk_2` FOREIGN KEY (`attivitaIDAttivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8