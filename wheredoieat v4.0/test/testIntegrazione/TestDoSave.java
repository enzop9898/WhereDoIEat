package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;
import junit.framework.TestCase;

public class TestDoSave extends TestCase{

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
	public void testDoSave() {
		FotoBean inserito=tester.doRetrieveByKey(f.getFoto());
		assertEquals(f, inserito);
	}

}
