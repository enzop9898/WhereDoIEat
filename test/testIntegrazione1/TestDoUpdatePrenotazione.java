package testIntegrazione1;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.PrenotazioneBean;
import dao.PrenotazioneDAO;
import junit.framework.TestCase;

public class TestDoUpdatePrenotazione extends TestCase{

	private PrenotazioneDAO tester=new PrenotazioneDAO();
	private PrenotazioneBean p;
	
	@Before
	public void setUp() throws Exception {
		super.setUp();
		p=new PrenotazioneBean(0, "2020-03-02", 1300, 12, "tanucc", 2);
		tester.doSave(p);
		ArrayList<PrenotazioneBean> find=new ArrayList<PrenotazioneBean>();
		find=tester.doRetrieveAll();
		p.setIdPren(find.get(find.size()-1).getIdPren());
	}
	
	@After
	 public void tearDown() throws Exception {
		super.tearDown();
		   tester.doDelete(p.getIdPren());
	 }
	
	@Test
	public void testDoUpdate() throws SQLException {
		p.setData("2021-04-01");
		p.setNumPosti(3);
		p.setOra(1400);
		tester.doUpdate(p);
		PrenotazioneBean p2=tester.doRetrieveByKey(p.getIdPren());
		assertEquals(p, p2);
		
	}

}
