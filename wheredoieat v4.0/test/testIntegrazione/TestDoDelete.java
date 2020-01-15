package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;
import junit.framework.TestCase;

public class TestDoDelete extends TestCase{

	private FotoBean f;
	private FotoDAO tester=new FotoDAO();
	
	@Before
	public void setUp() throws Exception {
		super.setUp();
		f=new FotoBean("zzz.jpg",1);
		tester.doSave(f);
	}
	
	@After
	public void tearDown() throws Exception {
		super.tearDown();
		tester.doDelete(f.getFoto());
	}
	
	@Test
	public void testDoDelete() throws SQLException {
		tester.doDelete(f.getFoto());
		assertEquals(null, tester.doRetrieveByKey(f.getFoto()));
	}

}
