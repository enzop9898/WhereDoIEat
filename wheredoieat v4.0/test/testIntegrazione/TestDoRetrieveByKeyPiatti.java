package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.PiattiBean;
import dao.PiattiDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByKeyPiatti extends TestCase{

	private PiattiDAO tester=new PiattiDAO();
	private PiattiBean p=new PiattiBean(1, "gnocchi al forno", "gnocchi cotti al forno  per 10 minuti", 1);
	
	
	@Test
	public void testDoRetrieveByKey() {
		assertEquals(p, tester.doRetrieveByKey(p.getIdPiatto()));
	}

}
