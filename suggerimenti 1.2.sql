CREATE TABLE `suggerimenti` (
  `id` int(10) NOT NULL auto_increment,
  `titolo` varchar(50) NOT NULL,
  `testo` varchar(255) NOT NULL,
  `personaUsername` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personaUsername` (`personaUsername`),
  CONSTRAINT `suggerimenti_ibfk_1` FOREIGN KEY (`personaUsername`) REFERENCES `persona` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
