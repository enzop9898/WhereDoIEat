package testIntegrazione1;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.RecensioneBean;
import dao.RecensioneDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAll extends TestCase{

	private RecensioneDAO tester=new RecensioneDAO();
	
	@Test
	public void testDoRetrieveAll() throws SQLException {
		ArrayList<RecensioneBean> list=new ArrayList<RecensioneBean>();
		RecensioneBean r2=new RecensioneBean(5, "ciao didod idiv nsaivoans ija ", "ElPampa", 2);
		list.add(r2);
		r2=new RecensioneBean(1, "asdfsf safsd gfdsg", "gerdenis", 2);
		list.add(r2);
		assertEquals(list, tester.doRetrieveAll(2));
	}
}
