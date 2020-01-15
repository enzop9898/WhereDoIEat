package testIntegrazione;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import bean.SuggerimentiBean;
import dao.SuggerimentiDAO;
import junit.framework.TestCase;

public class TestDoRetrieveAllSuggerimenti extends TestCase{

	private SuggerimentiDAO tester=new SuggerimentiDAO();
	
	@Test
	public void testDoRetrieveAll() throws SQLException {
		ArrayList<SuggerimentiBean> list=new ArrayList<SuggerimentiBean>();
		SuggerimentiBean s2=new SuggerimentiBean(22, "recensioni non funzionanti", " jvhsdkvbhjsvbjs vbsvbsdk vhsdkjvbhdj fv svsd fsvd fsd bsdfb sdfb dsfbds b s dfb sdbdfb sdb sdbd", "tanucc");
		list.add(s2);
		s2=new SuggerimentiBean(24, "problema home", " jvhsdkvbhjsvbjs vbsvbsdk vhsdkjvbhdj fv svsd fsvd fsd bsdfb sdfb dsfbds b s dfb sdbdfb sdb sdbd ds fasg ag ds gsdhsh sdh shbsv dfsb sdfb sdfb sfdbfsdbfdsb sfdbsfbsdfbsdfbsdf b", "tanucc");
		list.add(s2);
		s2=new SuggerimentiBean(26, "pizzerie non presenti", "non ci sono pizzerie sul sito", "tanucc");
		list.add(s2);
		s2=new SuggerimentiBean(27, "ciao", "il problema è questo", "tanucc");
		list.add(s2);
		assertEquals(list, tester.doRetrieveAll());
	}

}
