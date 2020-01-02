package bean;

public class SuggerimentiBean {
   private int id;
   private String titolo;
   private String testo;
   private String personaUsername;
public SuggerimentiBean(int id, String titolo, String testo, String personaUsername) {
	this.id = id;
	this.titolo = titolo;
	this.testo = testo;
	this.personaUsername = personaUsername;
}
   
public SuggerimentiBean() {}

public SuggerimentiBean(int id) {
	this.id=id;
}

// metodi GET
public int getId() {
	return id;
}

public String getTitolo() {
	return titolo;
}

public String getTesto() {
	return testo;
}

public String getPersonaUsername() {
	return personaUsername;
}

//metodi SET
public void setId(int id) {
	this.id = id;
}

public void setTitolo(String titolo) {
	this.titolo = titolo;
}

public void setTesto(String testo) {
	this.testo = testo;
}

public void setPersonaUsername(String personaUsername) {
	this.personaUsername = personaUsername;
}


	
}