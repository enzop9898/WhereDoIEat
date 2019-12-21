package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import bean.PersonaBean;
import dao.PersonaDAO;



@WebServlet("/index.html")

public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// questo counter � visibile solo in questa servlet
	// e conta il numero di accessi totale da parte di chiunque accede a questa servlet
	// da quando viene deployed sul server
	private int servletCount;  

	public void  init() throws ServletException {
	      // inizializzazione 
	      servletCount = 0;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// recupero login e password e li memorizzo in userB se presenti
		PersonaBean userB = getUsrPsw(request);

		if (userB == null)     // no login e/o no password -> redirigo a login form 
			response.sendRedirect("Home.jsp");    // non ho bisogno di mandargli parametri. Il nome login.jsp si vedr� nel browser
		else {
			try{
				PersonaDAO ubd = new PersonaDAO();
				PersonaBean ub = new PersonaBean();
				ub=ubd.doRetrieveByLogin(userB.getUsername(), userB.getPassword());
				if (ub==null) {    // login e/o password sbagliati -> chiamo login form  con messaggio errore
									// il nome login.jsp non si vedr� nel browser
					request.setAttribute("denied", true);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home.jsp");
					requestDispatcher.forward(request, response);
				}else {
					// l'utente � ammesso al sito: inserisco dati di login in cookies e do risposta
					
					Cookie usrcookie = new Cookie("usr", ub.getUsername());
					Cookie pswcookie = new Cookie("psw", ub.getPassword());
					response.addCookie(usrcookie);
					response.addCookie(pswcookie);
					PersonaBean ubtip=new PersonaBean();
					ubtip=ubd.doRetrieveByKey(ub.getUsername());
					int tip=ubtip.getTipo();
					if(tip==1) {
					request.getSession().setAttribute("tipo", true);
					}
					
					request.getSession().setAttribute("denied3", true);
					request.getSession().setAttribute("nom", ub);
					
					
                    request.getSession().setAttribute("cliente", ub);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home.jsp");
					requestDispatcher.forward(request, response);
				}
			}
			catch(Exception e)
			{  
				request.setAttribute("exception", e);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("exception.jsp");
				requestDispatcher.forward(request, response);
			}
		}
	}

		
	private PersonaBean getUsrPsw(HttpServletRequest request) {
		
		PersonaBean ub = null;
		String usr = null, psw = null;

		Cookie[] c = request.getCookies();   // tramite cookie
		if (c!=null) { 
			for(int i=0;i<c.length;i++) {
				if (c[i].getName().equals("usr")) 
					usr = c[i].getValue();
				if (c[i].getName().equals("psw")) 
					psw = c[i].getValue();	
			}
		} 	
		if (usr == null || psw == null){		// se recupero tramite cookie fallisce, allora tramite parametri	
			String temp;                        
			temp = request.getParameter("usr");
			if (temp!= null) {
				usr = temp;
				temp = request.getParameter("psw");   
				if (temp!= null) {
					psw = temp;
				}
			}
		}
		
		if (usr != null && psw != null)    // se recupero ha avuto successo riempio bean
			 ub = new PersonaBean(usr, psw);
		
		return ub;
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
