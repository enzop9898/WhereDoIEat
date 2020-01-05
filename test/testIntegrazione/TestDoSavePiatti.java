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

public class TestDoSavePiatti extends TestCase{

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
	public void testDoSave() {
		PiattiBean p2=new PiattiBean();
		p2=tester.doRetrieveByKey(p.getIdPiatto());
		assertEquals(p, p2);
	}

}
