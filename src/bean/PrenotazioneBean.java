package bean;

import java.util.Date;

public class PrenotazioneBean {
	private int idPren;
    private String data;
    private int ora;
    private int numPosti;
    private String personaUsername;
    private int attivitaIDAttivita;
	
    public PrenotazioneBean(int idPren, String data, int ora, int numPosti, String personaUsername, int attivitaIDAttivita) {
		this.idPren=idPren;
    	this.data = data;
		this.ora = ora;
		this.numPosti = numPosti;
		this.personaUsername = personaUsername;
		this.attivitaIDAttivita = attivitaIDAttivita;
	}
    
    public PrenotazioneBean() {}

    public PrenotazioneBean(int idPren) {
		this.idPren=idPren;
	}

	//metodi GET
    public int getIdPren()  {
    	return idPren;
    }
    
	public String getData() {
		return data;
	}

	public int getOra() {
		return ora;
	}

	public int getNumPosti() {
		return numPosti;
	}

	public String getPersonaUsername() {
		return personaUsername;
	}

	public int getAttivitaIDAttivita() {
		return attivitaIDAttivita;
	}

	//Metodi SET
	public void setIdPren(int idPren) {
		this.idPren=idPren;
	}
	
	public void setData(String data) {
		this.data = data;
	}

	public void setOra(int ora) {
		this.ora = ora;
	}

	public void setNumPosti(int numPosti) {
		this.numPosti = numPosti;
	}

	public void setPersonaUsername(String personaUsername) {
		this.personaUsername = personaUsername;
	}

	public void setAttivitaIDAttivita(int attivitaIDAttivita) {
		this.attivitaIDAttivita = attivitaIDAttivita;
	}
    
}
