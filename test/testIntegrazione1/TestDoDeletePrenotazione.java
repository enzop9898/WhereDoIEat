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

public class TestDoDeletePrenotazione extends TestCase{

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
	public void testDoDelete() throws SQLException {
		tester.doDelete(p.getIdPren());
		assertEquals(null, tester.doRetrieveByKey(p.getIdPren()));
	}

}
