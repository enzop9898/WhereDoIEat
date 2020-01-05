package testIntegrazione1;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.RecensioneBean;
import dao.RecensioneDAO;
import junit.framework.TestCase;

public class TestDoSave extends TestCase{

	private RecensioneDAO tester=new RecensioneDAO();
	private RecensioneBean r;
	
	@Before
	public void setUp() throws Exception {
		super.setUp();
		r=new RecensioneBean(3, "ciao dosdfisf sdf suf suf ncsuvbsiuaisubvdhfi sdhiv sdhbvu ", "elcardinero", 1);
		tester.doSave(r);
		ArrayList<RecensioneBean>find=new ArrayList<RecensioneBean>();
		find=tester.doRetrieveAll(1);
		r.setIdRecensione(find.get(find.size()-1).getIdRecensione());
	}
	
	@After
	 public void tearDown() throws Exception {
		super.tearDown();
		   tester.doDelete(r.getIdRecensione());
	   }
	
	@Test
	public void testDoSave() {
		RecensioneBean r2=tester.doRetrieveByKey(r.getIdRecensione());
		assertEquals(r, r2);
	}

}
