package junit;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.PiattiBean;
import dao.PiattiDAO;

public class TestPiattiDAO {

	private PiattiDAO tester=new PiattiDAO();
	private PiattiBean p;
	
	@Before
	public void setUp() throws SQLException {
		p=new PiattiBean(0,"patate","patate cotte nel forno elettrico",1);
		tester.doSave(p);
		ArrayList<PiattiBean> find=new ArrayList<PiattiBean>();
		find=tester.doRetrieveAll();
		p.setIdPiatto(find.get(find.size()-1).getIdPiatto());
	}
	
	@After
	 public void tearDown() throws SQLException {
		   tester.doDelete(p.getIdPiatto());
	   }
	
	@Test
	public void testDoSave() {
		PiattiBean p2=new PiattiBean();
		p2=tester.doRetrieveByKey(p.getIdPiatto());
		assertEquals("Result", p2, p);
	}

	@Test
	public void testDoRetrieveByKey() {
		assertEquals("Result", p, tester.doRetrieveByKey(p.getIdPiatto()));
	}

	@Test
	public void testDoDelete() throws SQLException {
		assertEquals("Result", true, tester.doDelete(p.getIdPiatto()));
	}

	@Test
	public void testDoUpdate() throws SQLException {
		p.setPiatto("patatine fritte");
		p.setDescrizione("patatine con olio di girasoli");
		tester.doUpdate(p);
		PiattiBean p2=new PiattiBean();
		p2=tester.doRetrieveByKey(p.getIdPiatto());
		assertEquals("Result", p2, p);
	}

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
		list.add(p);
		assertEquals("Result", list, tester.doRetrieveAll());
	}

	@Test
	public void testDoRetrieveByAttivita() {
		ArrayList<PiattiBean> list=new ArrayList<PiattiBean>();
		PiattiBean p2=new PiattiBean(1, "gnocchi al forno", "gnocchi cotti al forno  per 10 minuti", 1);
		list.add(p2);
		p2=new PiattiBean(4, "pizza", "pizza cotta nel forno a legna", 1);
		list.add(p2);
		p2=new PiattiBean(6, "risotto", "Risotto tipico della zona con funghi paesani", 1);
		list.add(p2);
		list.add(p);
		assertEquals("Result",list, tester.doRetrieveByAttivita(p.getAttivitaIDAttivita()));
		
	}

}
