package bean;

public class PersonaBean {
	 private String username;
	 private String nome;
	 private String cognome;
	 private String email;
	 private String telefono;
	 private String citta;
	 private int tipo;
	 private String comune;
	 private String password;
	 
     public PersonaBean() {}
     
     public PersonaBean(String username, String nome, String cognome, String email, String telefono, String citta, int tipo, String comune, String password) {
    	 this.username=username;
    	 this.nome=nome;
    	 this.cognome=cognome;
    	 this.email=email;
    	 this.telefono=telefono;
    	 this.citta=citta;
    	 this.tipo=tipo;
    	 this.comune= comune;
    	 this.password=password;
     }
     
     public PersonaBean( String username) {
    	 this.username=username;
     }
     
     
     public PersonaBean(String usr, String psw) {
		this.username=usr;
		this.password=psw;
	}

	// metodi GET
	public String getUsername() {
		return username;
	}

	public String getNome() {
		return nome;
	}

	public String getCognome() {
		return cognome;
	}

	public String getEmail() {
		return email;
	}

	public String getTelefono() {
		return telefono;
	}

	public String getCitta() {
		return citta;
	}

	public int getTipo() {
		return tipo;
	}

	public String getComune() {
		return comune;
	}

	public String getPassword() {
		return password;
	}

	//metodi SET
	public void setUsername(String username) {
		this.username = username;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public void setComune(String comune) {
		this.comune = comune;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "PersonaBean [username=" + username + ", nome=" + nome + ", cognome=" + cognome + ", email=" + email
				+ ", telefono=" + telefono + ", citta=" + citta + ", tipo=" + tipo + ", comune=" + comune
				+ ", password=" + password + "]";
	}
     
	
    
}