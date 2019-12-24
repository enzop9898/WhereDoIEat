package bean;

public class AttivitaBean {
    private int idAttivita;
    private String nome;
    private String comune;
    private int oraApertura;
    private int oraChiusura;
    private String giornoChiusura;
    private String indirizzo;
    private String telefono;
    private int numPosti;
    private String mappa;
    private String personaUsername;
	public AttivitaBean(int idAttivita, String nome, String comune, int oraApertura, int oraChiusura,
			String giornoChiusura, String indirizzo, String telefono, int numPosti, String mappa,
			String personaUsername) {
		this.idAttivita = idAttivita;
		this.nome = nome;
		this.comune = comune;
		this.oraApertura = oraApertura;
		this.oraChiusura = oraChiusura;
		this.giornoChiusura = giornoChiusura;
		this.indirizzo = indirizzo;
		this.telefono = telefono;
		this.numPosti = numPosti;
		this.mappa = mappa;
		this.personaUsername = personaUsername;
	}
	
	public AttivitaBean() {}

	public AttivitaBean(int idAttivita) {
	     this.idAttivita=idAttivita;
	}

	//metodi GET 
	public int getIdAttivita() {
		return idAttivita;
	}

	public String getNome() {
		return nome;
	}

	public String getComune() {
		return comune;
	}

	public int getOraApertura() {
		return oraApertura;
	}

	public int getOraChiusura() {
		return oraChiusura;
	}

	public String getGiornoChiusura() {
		return giornoChiusura;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public String getTelefono() {
		return telefono;
	}

	public int getNumPosti() {
		return numPosti;
	}

	public String getMappa() {
		return mappa;
	}

	public String getPersonaUsername() {
		return personaUsername;
	}

	//metodi SET
	public void setIdAttivita(int idAttivita) {
		this.idAttivita = idAttivita;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setComune(String comune) {
		this.comune = comune;
	}

	public void setOraApertura(int oraApertura) {
		this.oraApertura = oraApertura;
	}

	public void setOraChiusura(int oraChiusura) {
		this.oraChiusura = oraChiusura;
	}

	public void setGiornoChiusura(String giornoChiusura) {
		this.giornoChiusura = giornoChiusura;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public void setNumPosti(int numPosti) {
		this.numPosti = numPosti;
	}

	public void setMappa(String mappa) {
		this.mappa = mappa;
	}

	public void setPersonaUsername(String personaUsername) {
		this.personaUsername = personaUsername;
	}    
    
}
