package testIntegrazione1;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import dao.PrenotazioneDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByOraPrenotazione extends TestCase{
 
	private PrenotazioneDAO tester=new PrenotazioneDAO();
	
	@Test
	public void testDoRetrieveByOra() throws SQLException {
		assertEquals(25, tester.doRetrieveByOra(1300, 1, "2020-03-02"));
	}

}
