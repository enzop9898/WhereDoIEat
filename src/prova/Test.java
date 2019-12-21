package prova;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.PersonaBean;
import dao.PersonaDAO;

public class Test {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
	   PersonaBean appoggio = new PersonaBean();
       PersonaBean p= new PersonaBean("taucc33","Gaetano","De Lucia", "g.mur44o14@studenti.unisa.it","3404181948","Salerno", 1, "Fisciano", "mistersessa");
       PersonaDAO x= new PersonaDAO();
       x.doSave(p);
       ArrayList<PersonaBean> list= new ArrayList<PersonaBean>();
       list=x.doRetrieveAll();
       for(int i=0;i<list.size();i++) {
    	   appoggio=list.get(i);
    	   System.out.println(appoggio);
       }
	}

}