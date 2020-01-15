package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;


import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;
import junit.framework.TestCase;

public class TestDoRetrieveGroupby extends TestCase{

	private FotoDAO tester=new FotoDAO();
	
	
	@Test
	public void testDoRetrieveGroupby() throws SQLException {
		ArrayList<FotoBean> list=new ArrayList<FotoBean>();
		FotoBean f2=new FotoBean("fotodb/bruschetta.jpg", 1);
		list.add(f2);
		f2=new FotoBean("fotodb/img-ristoranti.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/imagesILV4I6JR.jpg", 3);
		list.add(f2);
		assertEquals(list, tester.doRetrieveGroupby());
	}


}
