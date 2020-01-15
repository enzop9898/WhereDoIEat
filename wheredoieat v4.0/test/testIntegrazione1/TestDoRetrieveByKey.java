package testIntegrazione1;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.RecensioneBean;
import dao.RecensioneDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByKey extends TestCase{

	private RecensioneDAO tester=new RecensioneDAO();
	private RecensioneBean r=new RecensioneBean(1, "ooodooooooooooooooooooooooo     o o o oo  oo", "elcardinero", 1);
	
	@Test
	public void testDoRetrieveByKey() {
		r.setIdRecensione(1);
		assertEquals(r, tester.doRetrieveByKey(r.getIdRecensione()));
		
	}

}
