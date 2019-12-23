INSERT INTO `attivita` (`idAttivita`,`nome`,`comune`,`oraApertura`,`oraChiusura`,`giornoChiusura`,`indirizzo`,`telefono`,`numPosti`,`mappa`,`personaUsername`) VALUES (1,'El pampa Sosa','Fisciano',12,24,'Domenica','via bomber','39340412122',100,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3025.9426235718774!2d14.769572615021944!3d40.67523314780173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc239baaf7187%3A0x9cae3635339ffee0!2sSalerno%20Stazione!5e0!3m2!1sit!2sit!4v1577092641285!5m2!1sit!2sit','amecuomo');
INSERT INTO `attivita` (`idAttivita`,`nome`,`comune`,`oraApertura`,`oraChiusura`,`giornoChiusura`,`indirizzo`,`telefono`,`numPosti`,`mappa`,`personaUsername`) VALUES (2,'Numero1','Baronissi',19,24,'Lunedi','Via numero 1','123213123',90,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.4536055228923!2d14.79028741502506!3d40.77404084175542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc5a5fb14b909%3A0x38886a101e6824ee!2sFisciano%20(Universit%C3%A0)!5e0!3m2!1sit!2sit!4v1577093098487!5m2!1sit!2sit','toni9');
INSERT INTO `attivita` (`idAttivita`,`nome`,`comune`,`oraApertura`,`oraChiusura`,`giornoChiusura`,`indirizzo`,`telefono`,`numPosti`,`mappa`,`personaUsername`) VALUES (3,'El pocho di Salerno','Salerno',19,24,'Lunedi','via Roma','4324322',110,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.6707045574185!2d14.76813671502418!3d40.74727084339462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc43e1a9c404b%3A0x7f2d39e1b567aa1!2sBaronissi%20Municipio!5e0!3m2!1sit!2sit!4v1577093153931!5m2!1sit!2sit','amecuomo');

INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/bruschetta.jpg',1);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/ristorante-da-kico.jpg',1);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/img-ristoranti.jpg',2);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/la-sala.jpg',2);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/pizza.jpg',2);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/ristorante-servizio.jpg',2);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/testata-ristorante.jpg',2);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/imagesILV4I6JR.jpg',3);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/Montagna-Verde-Ristorante.jpg',3);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/ristorante-firenze.jpg',3);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/ristorante.jpg',3);
INSERT INTO `foto` (`foto`,`attivitaIDattivita`) VALUES ('fotodb/ristorante1.jpg',3);


INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('amecuomo','Amedeo','Cuomo','amedeo@bestemmio.com','393452134567','Salerno',2,'Baronissi','Mistersessa69');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('elcardinero','Cruz','Cruz','elcardinero@gmail.com','393404181948','Buenos Aires',1,'Buenos Aires','Mistersessa69');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('ElPampa','Sosa','Sosa','elpampasosa@gmail.com','393404181948','Buenos Aires',1,'Buenos Aires','Mistersessa69');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('gerdenis','German','Denis','eltanke@gmail.com','393404181948','Buenos Aires',1,'Buenos Aires','Mistersessa69');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('imperatore','Adriano','Adriano','imperatore10@gmail.com','393478923456','Rio De Janeiro',1,'Rio','Mistersessa69');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('tanucc','Gaetano','Mauro','g.mauro14@studenti.unisa.it','3404181948','Salerno',1,'Fisciano','mistersessa');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('tanucc30','Gaetano','De Lucia','g.maursfso14@studenti.unisa.it','3404181948','Salerno',1,'Fisciano','mistersessa');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('tanucc33','Gaetano','De Lucia','g.maur44o14@studenti.unisa.it','3404181948','Salerno',1,'Fisciano','mistersessa');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('taucc33','Gaetano','De Lucia','g.mur44o14@studenti.unisa.it','3404181948','Salerno',1,'Fisciano','mistersessa');
INSERT INTO `persona` (`username`,`nome`,`cognome`,`email`,`telefono`,`citta`,`tipo`,`comune`,`password`) VALUES ('toni9','Luca','Toni','toniluca9@gmail.com','393453456789','Firenze',2,'casigliolo','Mistersessa69');


INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (1,'gnocchi al forno','gnocchi cotti al forno  per 10 minuti',1);
INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (2,'pizza integrale','pizza con farina integrale',2);
INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (3,'pizza','pizza cotta nel forno a legna',2);
INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (4,'pizza','pizza cotta nel forno a legna',1);
INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (5,'pizza','pizza cotta nel forno a legna',3);
INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (6,'risotto','Risotto tipico della zona con funghi paesani',1);
INSERT INTO `piatti` (`idPiatto`,`piatto`,`descrizione`,`attivitaIDAttivita`) VALUES (7,'tagliata di carne','carne servita con contorni tipici della zona',3);


INSERT INTO `recensione` (`idRecensione`,`valutazione`,`commento`,`personaUsername`,`attivitaIDAttivita`) VALUES (1,3,'ciao dosdfisf sdf suf suf ncsuvbsiuaisubvdhfi sdhiv sdhbvu ','elcardinero',1);
INSERT INTO `recensione` (`idRecensione`,`valutazione`,`commento`,`personaUsername`,`attivitaIDAttivita`) VALUES (2,5,'ciao didod idiv nsaivoans ija ','ElPampa',2);
INSERT INTO `recensione` (`idRecensione`,`valutazione`,`commento`,`personaUsername`,`attivitaIDAttivita`) VALUES (3,1,'asdfsf safsd gfdsg','gerdenis',2);
INSERT INTO `recensione` (`idRecensione`,`valutazione`,`commento`,`personaUsername`,`attivitaIDAttivita`) VALUES (4,2,'sfsdfsdfasfdasfdasf','ElPampa',1);
INSERT INTO `recensione` (`idRecensione`,`valutazione`,`commento`,`personaUsername`,`attivitaIDAttivita`) VALUES (5,5,'sgsgfsgsg','ElPampa',3);
INSERT INTO `recensione` (`idRecensione`,`valutazione`,`commento`,`personaUsername`,`attivitaIDAttivita`) VALUES (6,4,'sdgfsdgsdgdgd ','elcardinero',3);

