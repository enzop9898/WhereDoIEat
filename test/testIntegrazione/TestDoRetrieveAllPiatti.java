package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.PiattiBean;
import dao.PiattiDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAllPiatti extends TestCase{

	private PiattiDAO tester=new PiattiDAO();
	
	@Test
	public void testDoRetrieveAll() throws SQLException {
		ArrayList<PiattiBean> list=new ArrayList<PiattiBean>();
		PiattiBean p2=new PiattiBean(1, "gnocchi al forno", "gnocchi cotti al forno  per 10 minuti", 1);
		list.add(p2);
		p2=new PiattiBean(2, "pizza integrale", "pizza con farina integrale", 2);
		list.add(p2);
		p2=new PiattiBean(3, "pizza", "pizza cotta nel forno a legna", 2);
		list.add(p2);
		p2=new PiattiBean(4, "pizza", "pizza cotta nel forno a legna", 1);
		list.add(p2);
		p2=new PiattiBean(5, "pizza", "pizza cotta nel forno a legna", 3);
		list.add(p2);
		p2=new PiattiBean(6, "risotto", "Risotto tipico della zona con funghi paesani", 1);
		list.add(p2);
		p2=new PiattiBean(7, "tagliata di carne", "carne servita con contorni tipici della zona", 3);
		list.add(p2);
		assertEquals(list, tester.doRetrieveAll());
	}
}
