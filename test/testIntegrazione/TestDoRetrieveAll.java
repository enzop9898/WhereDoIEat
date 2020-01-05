package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.FotoBean;
import dao.FotoDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAll extends TestCase{

	private FotoDAO tester=new FotoDAO();
	
	@Test
	public void testDoRetrieveAll() throws SQLException {
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
		assertEquals(list, tester.doRetrieveAll());
	}

}
