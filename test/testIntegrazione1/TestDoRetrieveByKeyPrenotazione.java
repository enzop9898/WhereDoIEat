package testIntegrazione1;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.PrenotazioneBean;
import dao.PrenotazioneDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByKeyPrenotazione extends TestCase{

	private PrenotazioneDAO tester=new PrenotazioneDAO();
	private PrenotazioneBean p=new PrenotazioneBean(1, "2020-03-02", 1300, 12, "tanucc", 1);
	
	
	@Test
	public void testDoRetrieveByKey() {
		assertEquals(p, tester.doRetrieveByKey(p.getIdPren()));
	}

}
