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

public class TestDoRetrieveByMediaVal extends TestCase{

	private AttivitaDAO tester=new AttivitaDAO();
    private int id;
    private AttivitaBean a4;
    
    @Before
	public void setUp() throws Exception {
    	super.setUp();
		a4=new AttivitaBean(0, "pojo restaurant", "Salerno", 12, 15, "Lunedi", "via sistemi distribuiti", "00000", 50, "fsfsf", "elpojo");
		tester.doSave(a4);
		ArrayList<AttivitaBean> list=new ArrayList<AttivitaBean>();
		list=tester.doRetrieveAll();
		id=list.get(list.size()-1).getIdAttivita();	
		a4.setIdAttivita(id);
	}
    
	@After
	public void tearDown() throws Exception {
		super.tearDown();
		tester.doDelete(a4.getIdAttivita());
	}
	
	@Test
	public void testDoRetrieveByMediaVal() {
		float x=tester.doRetrieveByMediaVal(id);
		assertEquals(0.0f, x,0.0f);
	}

}
