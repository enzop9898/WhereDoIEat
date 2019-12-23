CREATE TABLE `persona` (
  `username` varchar(32) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `citta` varchar(30) NOT NULL,
  `tipo` int(1) NOT NULL,
  `comune` varchar(15) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `mappa` varchar(400) DEFAULT NULL,
  `personaUsername` varchar(32) NOT NULL,
  PRIMARY KEY (`idAttivita`),
  KEY `personaUsername` (`personaUsername`),
  CONSTRAINT `attivita_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `foto` (
  `foto` varchar(150) NOT NULL,
  `attivitaIDattivita` int(10) NOT NULL,
  PRIMARY KEY (`foto`),
  KEY `attivitaIDattivita` (`attivitaIDattivita`),
  CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`attivitaIDattivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `piatti` (
  `idPiatto` int(10) NOT NULL AUTO_INCREMENT,
  `piatto` varchar(40) NOT NULL,
  `descrizione` varchar(150) DEFAULT NULL,
  `attivitaIDAttivita` int(10) NOT NULL,
  PRIMARY KEY (`idPiatto`),
  KEY `attivitaIDAttivita` (`attivitaIDAttivita`),
  CONSTRAINT `piatti_ibfk_1` FOREIGN KEY (`attivitaIDAttivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `preferiti` (
  `idPref` int(11) NOT NULL AUTO_INCREMENT,
  `personaUsername` varchar(32) NOT NULL,
  `attivitaIDAttivita` int(10) NOT NULL,
  PRIMARY KEY (`idPref`),
  KEY `personaUsername` (`personaUsername`),
  KEY `attivitaIDAttivita` (`attivitaIDAttivita`),
  CONSTRAINT `preferiti_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `preferiti_ibfk_2` FOREIGN KEY (`attivitaIDAttivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recensione` (
  `idRecensione` int(11) NOT NULL AUTO_INCREMENT,
  `valutazione` int(10) NOT NULL,
  `commento` varchar(255) DEFAULT NULL,
  `personaUsername` varchar(32) NOT NULL,
  `attivitaIDAttivita` int(10) NOT NULL,
  PRIMARY KEY (`idRecensione`),
  KEY `personaUsername` (`personaUsername`),
  KEY `attivitaIDAttivita` (`attivitaIDAttivita`),
  CONSTRAINT `recensione_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recensione_ibfk_2` FOREIGN KEY (`attivitaIDAttivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `suggerimenti` (
  `id` int(10) NOT NULL auto_increment,
  `titolo` varchar(50) NOT NULL,
  `testo` varchar(255) NOT NULL,
  `personaUsername` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personaUsername` (`personaUsername`),
  CONSTRAINT `suggerimenti_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
