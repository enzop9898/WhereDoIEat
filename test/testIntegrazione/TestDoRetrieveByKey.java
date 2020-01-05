package testIntegrazione;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByKey extends TestCase{

	private FotoBean f=new FotoBean("fotodb/bruschetta.jpg", 1);
	private FotoDAO tester=new FotoDAO();

	
	@Test
	public void testDoRetrieveByKey() {
		assertEquals(f,tester.doRetrieveByKey(f.getFoto()));
	}

}
