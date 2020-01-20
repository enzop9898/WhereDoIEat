package integrazione;

import static org.junit.Assert.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import bean.PersonaBean;
import bean.SuggerimentiBean;
import dao.SuggerimentiDAO;
import server.ServletSuggerimenti;
import static org.mockito.Mockito.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class TestServletSuggerimenti {

	@Mock
	HttpServletRequest req;
	@Mock
	HttpServletResponse res;
	@Mock
	HttpSession session;
	@Mock
	RequestDispatcher rd;
	
	ServletSuggerimenti servlet;
	
	SuggerimentiDAO sdao=new SuggerimentiDAO();	
	

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		servlet=new ServletSuggerimenti();
		when(req.getSession()).thenReturn(session);
	}
	
	@After
	public void tearDown() throws SQLException {
		ArrayList<SuggerimentiBean> list=new ArrayList<SuggerimentiBean>();
		list=sdao.doRetrieveAll();
		sdao.doDelete(list.get(list.size()-1).getId());
	}
	
	@Test
	public void suggerimentoOk() throws ServletException, IOException {
		when(req.getParameter("titolo")).thenReturn("Errore Password");
		when(req.getParameter("descrizione")).thenReturn("Il sistema non mi fa inserire la password");
		PersonaBean p=new PersonaBean("tanucc","Gaetano", "Mauro", "g.mauro14@studenti.unisa.it", "393404181948", "Avellino",1, "Atripalda", "mistersessa");
		when(session.getAttribute("cliente")).thenReturn(p);
		when(req.getAttribute("done")).thenReturn(true);
		boolean done=(boolean) req.getAttribute("done");
		when(req.getRequestDispatcher("suggerimenti.jsp")).thenReturn(rd);
		servlet.doGet(req,res);
		verify(rd, times(1)).forward(req, res);
		assertTrue(done);
	}
	
	

}
