package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import bean.SuggerimentiBean;
import dao.SuggerimentiDAO;
import junit.framework.TestCase;

public class TestDoSaveSuggerimenti extends TestCase{

	private SuggerimentiDAO tester=new SuggerimentiDAO();
	private SuggerimentiBean s;
	
	@Before
	public void setUp() throws Exception {
		super.setUp();
		s=new SuggerimentiBean(0, "recensioni non funzionanti", " jvhsdkvbhjsvbjs vbsvbsdk vhsdkjvbhdj fv svsd fsvd fsd bsdfb sdfb dsfbds b s dfb sdbdfb sdb sdbd", "tanucc");
		tester.doSave(s);
		ArrayList<SuggerimentiBean>find=new ArrayList<SuggerimentiBean>();
		find=tester.doRetrieveAll();
		s.setId(find.get(find.size()-1).getId());
	}
	
	@After
	public void tearDown() throws Exception {
		   super.tearDown();
		   tester.doDelete(s.getId());
	}
	
	@Test
	public void testDoSave() {
		SuggerimentiBean s2=tester.doRetrieveByKey(s.getId());
		assertEquals(s,s2);
	}

}
