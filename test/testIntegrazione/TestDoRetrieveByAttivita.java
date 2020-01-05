package testIntegrazione;

import static org.junit.Assert.*;

import java.util.ArrayList;


import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByAttivita extends TestCase{

	private FotoDAO tester=new FotoDAO();
	
	
	@Test
	public void testDoRetrieveByAttivita() {
		ArrayList <FotoBean> list=new ArrayList<FotoBean>();
		FotoBean f2=new FotoBean("fotodb/bruschetta.jpg", 1);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante-da-kico.jpg", 1);
		list.add(f2);
		assertEquals(list, tester.doRetrieveByAttivita(1));
	}

}
