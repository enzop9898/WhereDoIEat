package testIntegrazione;

import static org.junit.Assert.*;


import java.util.ArrayList;

import org.junit.Test;

import bean.PiattiBean;
import dao.PiattiDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByAttivitaPiatti extends TestCase{

	private PiattiDAO tester=new PiattiDAO();
	

	@Test
	public void testDoRetrieveByAttivita() {
		ArrayList<PiattiBean> list=new ArrayList<PiattiBean>();
		PiattiBean p2=new PiattiBean(1, "gnocchi al forno", "gnocchi cotti al forno  per 10 minuti", 1);
		list.add(p2);
		p2=new PiattiBean(4, "pizza", "pizza cotta nel forno a legna", 1);
		list.add(p2);
		p2=new PiattiBean(6, "risotto", "Risotto tipico della zona con funghi paesani", 1);
		list.add(p2);
		assertEquals(list, tester.doRetrieveByAttivita(p2.getAttivitaIDAttivita()));
		
	}

}
