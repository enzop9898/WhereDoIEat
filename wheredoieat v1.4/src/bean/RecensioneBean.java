package bean;

public class RecensioneBean {
    private int valutazione;
    private String commento;
    private String personaUsername;
    private int attivitaIDAttivita;
	public RecensioneBean(int valutazione, String commento, String personaUsername, int attivitaIDAttivita) {
		this.valutazione = valutazione;
		this.commento = commento;
		this.personaUsername = personaUsername;
		this.attivitaIDAttivita = attivitaIDAttivita;
	}
     
	public RecensioneBean() {}

	public RecensioneBean(String personaUsername2, int attivitaIDAttivita2) {
		this.attivitaIDAttivita=attivitaIDAttivita2;
		this.personaUsername=personaUsername2;
	}

	//metodi GET
	public int getValutazione() {
		return valutazione;
	}

	public String getCommento() {
		return commento;
	}

	public String getPersonaUsername() {
		return personaUsername;
	}

	public int getAttivitaIDAttivita() {
		return attivitaIDAttivita;
	}

	//Metodi SET
	public void setValutazione(int valutazione) {
		this.valutazione = valutazione;
	}

	public void setCommento(String commento) {
		this.commento = commento;
	}

	public void setPersonaUsername(String personaUsername) {
		this.personaUsername = personaUsername;
	}

	public void setAttivitaIDAttivita(int attivitaIDAttivita) {
		this.attivitaIDAttivita = attivitaIDAttivita;
	}
    
}