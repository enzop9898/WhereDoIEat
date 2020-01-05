package testPersona;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.PersonaBean;
import dao.PersonaDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAll extends TestCase{

	private PersonaDAO tester=new PersonaDAO();
	   
	   private PersonaBean persona;
	   
	   @Before
	   public void setUp() throws Exception {
		   super.setUp();
		   persona=new PersonaBean("lapulce10","Lionel","Messi","lapulce10@gmail.com","393404181948","Barcelona",1,"barca","lapulce");
		   tester.doSave(persona);
	   }
	   
	   @After
	   public void tearDown() throws Exception {
		   super.tearDown();
		   tester.doDelete(persona.getUsername());
	   }
	   
	   @Test
		public void testDoRetrieveAll() throws SQLException {
			tester.doDelete(persona.getUsername());
			ArrayList<PersonaBean> persone=new ArrayList<PersonaBean>();
			PersonaBean persona=new PersonaBean("amecuomo", "Amedeo", "Cuomo", "amedeo@bestemmio.com", "393452134567", "Salerno", 2, "Baronissi", "Mistersessa69");
			persone.add(persona);
			persona=new PersonaBean("elcardinero", "Cruz", "Cruz", "elcardinero@gmail.com","393404181948", "Buenos Aires", 1, "Buenos Aires", "Mistersessa69");
			persone.add(persona);
			persona=new PersonaBean("ElPampa", "Sosa", "Sosa", "elpampasosa@gmail.com", "393404181948", "Buenos Aires",1, "Buenos Aires", "Mistersessa69");
			persone.add(persona);
			persona=new PersonaBean("elpojo", "Vittorio","Scarano", "vitsca@gmail.com", "393404181948", "Salerno",2, "Baronissi", "Vittorio9");
			persone.add(persona);
			persona=new PersonaBean("gerdenis", "German", "Denis", "eltanke@gmail.com", "393404181948", "Buenos Aires", 1, "Buenos Aires", "Mistersessa69");
			persone.add(persona);
			persona=new PersonaBean("imperatore", "Adriano", "Adriano", "imperatore10@gmail.com", "393478923456", "Rio De Janeiro", 1, "Rio", "Mistersessa69");
			persone.add(persona);
			persona=new PersonaBean("tanucc", "Gaetano", "Mauro", "g.mauro14@studenti.unisa.it", "393404181948", "Salerno", 1, "Fisciano", "mistersessa");
			persone.add(persona);
			persona=new PersonaBean("tanucc33", "Gaetano", "De Lucia", "g.maur44o14@studenti.unisa.it", "3404181948", "Salerno", 1, "Fisciano","mistersessa");
			persone.add(persona);
			persona=new PersonaBean("toni9", "Luca", "Toni", "toniluca9@gmail.com", "393453456789", "Firenze", 2, "casigliolo", "Mistersessa69");
			persone.add(persona);
			assertEquals(persone, tester.doRetrieveAll());
		}

	   
}
