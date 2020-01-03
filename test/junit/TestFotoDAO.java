package junit;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;

public class TestFotoDAO {

	private FotoBean f;
	private FotoDAO tester=new FotoDAO();
	
	@Before
	public void setUp() throws SQLException {
		f=new FotoBean("zzz.jpg",1);
		tester.doSave(f);
	}
	
	@After
	public void tearDown() throws SQLException {
		tester.doDelete(f.getFoto());
	}
	
	@Test
	public void testDoSave() {
		FotoBean inserito=tester.doRetrieveByKey(f.getFoto());
		assertEquals("Result", inserito, f);
	}


	@Test
	public void testDoRetrieveByKey() {
		assertEquals("Result", f,tester.doRetrieveByKey(f.getFoto()));
	}

	@Test
	public void testDoDelete() throws SQLException {
		assertEquals("Result", true, tester.doDelete(f.getFoto()));
	}

	@Test
	public void testDoUpdate() throws SQLException {
		String path=f.getFoto();
		f.setFoto("zzzzzzz.png");
		tester.doUpdate(f,path);
		FotoBean mod=tester.doRetrieveByKey(f.getFoto());
		System.out.println(mod);
		assertEquals("Result",mod, f);
	}

	@Test
	public void testDoRetrieveAll() {
		ArrayList<FotoBean>list=new ArrayList<FotoBean>();
		FotoBean f2=new FotoBean("fotodb/bruschetta.jpg",1);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante-da-kico.jpg", 1);
		list.add(f2);
		f2=new FotoBean("fotodb/img-ristoranti.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/la-sala.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/pizza.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante-servizio.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/testata-ristorante.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/imagesILV4I6JR.jpg", 3);
		list.add(f2);
		f2=new FotoBean("fotodb/Montagna-Verde-Ristorante.jpg", 3);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante-firenze.jpg", 3);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante.jpg", 3);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante1.jpg", 3);
		list.add(f2);
		list.add(f);
		
	}

	@Test
	public void testDoRetrieveGroupby() throws SQLException {
		ArrayList<FotoBean> list=new ArrayList<FotoBean>();
		FotoBean f2=new FotoBean("fotodb/bruschetta.jpg", 1);
		list.add(f2);
		f2=new FotoBean("fotodb/img-ristoranti.jpg", 2);
		list.add(f2);
		f2=new FotoBean("fotodb/imagesILV4I6JR.jpg", 3);
		list.add(f2);
		assertEquals("Result", list, tester.doRetrieveGroupby());
	}

	@Test
	public void testDoRetrieveByAttivita() {
		ArrayList <FotoBean> list=new ArrayList<FotoBean>();
		FotoBean f2=new FotoBean("fotodb/bruschetta.jpg", 1);
		list.add(f2);
		f2=new FotoBean("fotodb/ristorante-da-kico.jpg", 1);
		list.add(f2);
		list.add(f);
		assertEquals("Result", list, tester.doRetrieveByAttivita(1));
	}

}
