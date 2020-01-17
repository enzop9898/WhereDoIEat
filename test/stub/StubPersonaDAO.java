package stub;

import java.util.ArrayList;

import bean.PersonaBean;

public class StubPersonaDAO {

	private ArrayList<PersonaBean> lista=new ArrayList<PersonaBean>();
	
	public void doSave(PersonaBean p) {
		if(!(lista.contains(p))) {
			lista.add(p);
		} else {
			System.out.println("Già presente sul db");
		}
	}
	
	public PersonaBean doRetrieveByKey(String username) {
		for(PersonaBean p: lista) {
			if(p.getUsername().equals(username)) {
				return p;
			}
		}
		return null;
	}
	
    public void doUpdate(PersonaBean p) {
    	for(PersonaBean p2 :lista) {
    		if(p2.getUsername().equals(p.getUsername())) {
    			p2.setCitta(p.getCitta());
    			p2.setCognome(p.getCognome());
    			p2.setComune(p.getComune());
    			p2.setEmail(p.getEmail());
    			p2.setNome(p.getNome());
    			p2.setPassword(p.getPassword());
    			p2.setTelefono(p.getTelefono());
    			p2.setTipo(p.getTipo());
    			break;
    		}
    	}
    }
	
    public boolean doDelete(String usr) {
    	for(PersonaBean p:lista)  {
    		if(p.getUsername().equals(usr)) {
    			lista.remove(p);
    			return true;
    		}
    	}
    	return false;
    }
    
    public ArrayList<PersonaBean> doRetrieveAll() {
    	return lista;
    }
    
    public PersonaBean doRetrieveByLogin (String user, String pass) {
    	for (PersonaBean p : lista) {
    		if((p.getUsername().equals(user)) && (p.getPassword().equals(pass))) {
    			return p;
    		}
    	}
    	return null;
    }
    
    public PersonaBean doRetrieveByEmail(String email) {
    	for(PersonaBean p : lista) {
    		if(p.getEmail().equals(email)) {
    			return p;
    		}
    	}
    	return null;
    }
	
    
}
