package testIntegrazione1;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.PrenotazioneBean;
import dao.PrenotazioneDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAllPrenotazione extends TestCase{

	private PrenotazioneDAO tester=new PrenotazioneDAO();
	
	@Test
	public void testDoRetrieveAll() throws SQLException {
		ArrayList<PrenotazioneBean> list=new ArrayList<PrenotazioneBean>();
		PrenotazioneBean p2=new PrenotazioneBean(1, "2020-03-02", 1300, 12, "tanucc", 1);
		list.add(p2);
		p2=new PrenotazioneBean(2, "2020-03-04", 1330, 2, "tanucc", 1);
		list.add(p2);
		p2=new PrenotazioneBean(3, "2020-03-02", 1300, 13, "tanucc", 1);
		list.add(p2);
		p2=new PrenotazioneBean(4, "2020-03-04", 2000, 20, "tanucc", 3);
		list.add(p2);
		assertEquals(list, tester.doRetrieveAll());
	}

}
