package testIntegrazione;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.SuggerimentiBean;
import dao.SuggerimentiDAO;
import junit.framework.TestCase;

public class TestDoRetrieveByKeySuggerimenti extends TestCase{

	private SuggerimentiDAO tester=new SuggerimentiDAO();
	private SuggerimentiBean s=new SuggerimentiBean(22, "recensioni non funzionanti", " jvhsdkvbhjsvbjs vbsvbsdk vhsdkjvbhdj fv svsd fsvd fsd bsdfb sdfb dsfbds b s dfb sdbdfb sdb sdbd", "tanucc");
	
	@Test
	public void testDoRetrieveByKey() {
		assertEquals(s, tester.doRetrieveByKey(s.getId()));
	}

}
