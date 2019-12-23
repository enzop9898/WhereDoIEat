package bean;

public class PiattiBean {
   private int idPiatto;
   private String piatto;
   private String descrizione;
   private int attivitaIDAttivita;
   
   public PiattiBean() {}

   public PiattiBean(int idPiatto, String piatto, String descrizione, int attivitaIDAttivita) {
	 this.idPiatto = idPiatto;
	 this.piatto = piatto;
	 this.descrizione = descrizione;
	 this.attivitaIDAttivita = attivitaIDAttivita;
    }

   public PiattiBean(int idPiatto) {
	this.idPiatto=idPiatto;
}

	//metodi GET
    public int getIdPiatto() {
	  return idPiatto;
    }

    public String getPiatto() {
	  return piatto;
    }

    public String getDescrizione() {
	  return descrizione;
    }

    public int getAttivitaIDAttivita() {
	  return attivitaIDAttivita;
    }

    //metodi SET
    public void setIdPiatto(int idPiatto) {
	  this.idPiatto = idPiatto;
    }

    public void setPiatto(String piatto) {
	  this.piatto = piatto;
    }

    public void setDescrizione(String descrizione) {
	  this.descrizione = descrizione;
    }

    public void setAttivitaIDAttivita(int attivitaIDAttivita) {
	  this.attivitaIDAttivita = attivitaIDAttivita;
    }
      
   
}
