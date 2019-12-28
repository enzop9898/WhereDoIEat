package bean;

public class PreferitiBean {
    private String personaUsername;
    private int attivitaIDAttivita;
    
    public PreferitiBean() {}

	public PreferitiBean(String personaUsername, int attivitaIDAttivita) {
		this.personaUsername = personaUsername;
		this.attivitaIDAttivita = attivitaIDAttivita;
	}

	//metodi GET
	public String getPersonaUsername() {
		return personaUsername;
	}

	public int getAttivitaIDAttivita() {
		return attivitaIDAttivita;
	}

	//metodi SET
	public void setPersonaUsername(String personaUsername) {
		this.personaUsername = personaUsername;
	}

	public void setAttivitaIDAttivita(int attivitaIDAttivita) {
		this.attivitaIDAttivita = attivitaIDAttivita;
	}
    
	
    
}