package testAttivita;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.AttivitaBean;
import dao.AttivitaDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAll extends TestCase{

	private AttivitaDAO tester=new AttivitaDAO();
    
	
	@Test
	public void testDoRetrieveAll() throws SQLException {
		ArrayList<AttivitaBean> list2=new ArrayList<AttivitaBean>();
		AttivitaBean a=new AttivitaBean(1, "El pampa Sosa", "Fisciano", 13, 23, "Mercoledi", "via bomber", "39340412122", 200, "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3025.9426235718774!2d14.769572615021944!3d40.67523314780173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc239baaf7187%3A0x9cae3635339ffee0!2sSalerno%20Stazione!5e0!3m2!1sit!2sit!4v1577092641285!5m2!1sit!2sit", "amecuomo");
		list2.add(a);
		a=new AttivitaBean(2, "Numero1", "Baronissi", 19, 24, "Lunedi", "Via numero 1", "123213123", 90, "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.4536055228923!2d14.79028741502506!3d40.77404084175542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc5a5fb14b909%3A0x38886a101e6824ee!2sFisciano%20(Universit%C3%A0)!5e0!3m2!1sit!2sit!4v1577093098487!5m2!1sit!2sit", "toni9");
		list2.add(a);
		a=new AttivitaBean(3, "El pocho di Salerno", "Salerno", 19, 24, "Lunedi", "via Roma", "4324322", 110, "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.6707045574185!2d14.76813671502418!3d40.74727084339462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc43e1a9c404b%3A0x7f2d39e1b567aa1!2sBaronissi%20Municipio!5e0!3m2!1sit!2sit!4v1577093153931!5m2!1sit!2sit", "amecuomo");
		list2.add(a);
		assertEquals(list2, tester.doRetrieveAll());
	}

}
