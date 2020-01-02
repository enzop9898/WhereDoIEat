package bean;

public class FotoBean {
    private String foto;
    private int attivitaIDAttivita;
    
    public FotoBean() {}

	public FotoBean(String foto, int attivitaIDAttivita) {
		this.foto = foto;
		this.attivitaIDAttivita = attivitaIDAttivita;
	}

	public FotoBean(String foto) {
		this.foto=foto;
	}

	//metodi GET
	public String getFoto() {
		return foto;
	}

	public int getAttivitaIDAttivita() {
		return attivitaIDAttivita;
	}

	//metodi SET
	public void setFoto(String foto) {
		this.foto = foto;
	}

	public void setAttivitaIDAttivita(int attivitaIDAttivita) {
		this.attivitaIDAttivita = attivitaIDAttivita;
	}
    
}