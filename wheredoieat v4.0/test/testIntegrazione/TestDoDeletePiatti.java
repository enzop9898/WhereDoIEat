package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.PiattiBean;
import dao.PiattiDAO;
import junit.framework.TestCase;

public class TestDoDeletePiatti extends TestCase{

	private PiattiDAO tester=new PiattiDAO();
	private PiattiBean p;
	
	@Before
	public void setUp() throws Exception {
		super.setUp();
		p=new PiattiBean(0,"patate","patate cotte nel forno elettrico",1);
		tester.doSave(p);
		ArrayList<PiattiBean> find=new ArrayList<PiattiBean>();
		find=tester.doRetrieveAll();
		p.setIdPiatto(find.get(find.size()-1).getIdPiatto());
	}
	
	@After
	 public void tearDown() throws Exception {
		super.tearDown();
		   tester.doDelete(p.getIdPiatto());
	   }
	
	@Test
	public void testDoDelete() throws SQLException {
		tester.doDelete(p.getIdPiatto());
		assertEquals(null, tester.doRetrieveByKey(p.getIdPiatto()));
	}

}
