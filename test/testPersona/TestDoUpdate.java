package testPersona;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.PersonaBean;
import dao.PersonaDAO;
import junit.framework.TestCase;

public class TestDoUpdate extends TestCase{

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
		public void testDoUpdate() throws SQLException {
			persona.setComune("Fisciano");
			persona.setCitta("Salerno");
			persona.setCognome("Mauro");
			persona.setNome("Gaetano");
			persona.setTelefono("393404181948");
			tester.doUpdate(persona);
			PersonaBean inserito=tester.doRetrieveByKey(persona.getUsername());
			assertEquals("Result", inserito, persona);
		}
	   

}
