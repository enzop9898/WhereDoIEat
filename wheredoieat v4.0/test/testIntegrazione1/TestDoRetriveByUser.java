package testIntegrazione1;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.RecensioneBean;
import dao.RecensioneDAO;
import junit.framework.TestCase;

public class TestDoRetriveByUser extends TestCase{

	private RecensioneDAO tester=new RecensioneDAO();
	
	@Test
	public void testDoRetriveByUser() throws SQLException {
		ArrayList<RecensioneBean> list=new ArrayList<RecensioneBean>();
		RecensioneBean r2=new RecensioneBean(1, "asdfsf safsd gfdsg", "gerdenis", 2);
		list.add(r2);
		assertEquals(list, tester.doRetriveByUser("gerdenis"));
	}

}
