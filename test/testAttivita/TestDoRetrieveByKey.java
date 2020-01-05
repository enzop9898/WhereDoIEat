package testAttivita;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.AttivitaBean;
import dao.AttivitaDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByKey extends TestCase{

	
	private AttivitaDAO tester=new AttivitaDAO();
    private AttivitaBean a4=new AttivitaBean(1, "El pampa Sosa", "Fisciano", 13, 23, "Mercoledi", "via bomber", "39340412122", 200, "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3025.9426235718774!2d14.769572615021944!3d40.67523314780173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc239baaf7187%3A0x9cae3635339ffee0!2sSalerno%20Stazione!5e0!3m2!1sit!2sit!4v1577092641285!5m2!1sit!2sit", "amecuomo");
    
    
	
	@Test
	public void testDoRetrieveByKey() {
		assertEquals(a4, tester.doRetrieveByKey(a4.getIdAttivita()));
	}
}
