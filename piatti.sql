
CREATE TABLE `piatti` (
  `idPiatto` int(10) NOT NULL auto_increment,
  `piatto` varchar(40) NOT NULL,
  `descrizione` varchar(150) DEFAULT NULL,
  `attivitaIDAttivita` int(10) NOT NULL,
  PRIMARY KEY (`idPiatto`),
  KEY `attivitaIDAttivita` (`attivitaIDAttivita`),
  CONSTRAINT `piatti_ibfk_1` FOREIGN KEY (`attivitaIDAttivita`) REFERENCES `attivita` (`idAttivita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8