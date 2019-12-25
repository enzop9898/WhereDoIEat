<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="dao.*"  import="bean.*" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WhereDoIEat</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="STILI/attivita.css">
</head>
<body>
 
<%@ include file="header.jsp"%>

<% 
   AttivitaBean a=new AttivitaBean();
   a=(AttivitaBean)request.getAttribute("singolaAttivita");
   FotoDAO fdao= new FotoDAO();
   ArrayList<FotoBean> fList=new ArrayList<FotoBean>();
   fList=fdao.doRetrieveGroupby();
   String url="";
   if(a!=null) {
	   for(int i=0;i<fList.size();i++) {
	     if(fList.get(i).getAttivitaIDAttivita()==a.getIdAttivita()) {
  		    url=fList.get(i).getFoto();
  	     }
	   }
	   
%>
   
   <!--Main layout-->
  <main class="mt-0 pt-0">
    <div class="container dark-grey-text mt-5">

      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        <div class="col-md-4 mb-4 div1">
          <h1 id="titl"><%=a.getNome() %></h1><br>
          <div id="muu">
          <img src="<%=url%>" class="img-fluid" alt="">
          </div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-8 mb-4">

          <!--Content-->
          <div class="p-4">

            <div class="mb-3">
                <span class="badge badge-secondary" id="cat"><%=a.getOraApertura()%>:00-<%=a.getOraChiusura() %>:00</span>
                <span class="badge badge-secondary" id="br">Chiuso di <%=a.getGiornoChiusura() %></span>                
            </div>

			<%
  
   			PiattiDAO piattodao=new PiattiDAO();
  			 ArrayList<PiattiBean> pList=new ArrayList<PiattiBean>();
  			 pList=piattodao.doRetrieveByAttivita(a.getIdAttivita());
			%>
            

            <p class="lead">
            <span id="prezzovero">I piatti consigliati del locale</span>
            <br>
            <%
   			for(int i=0;i<pList.size();i++) {
	   		PiattiBean piatto= new PiattiBean();
	   		piatto=pList.get(i);
			%>      
              <span><%=piatto.getPiatto() %>: <%=piatto.getDescrizione() %></span>
              <br>
            <%} %>
            </p>

            <br>
            <h4 id="mappa">Come raggiungere il locale:</h4>
            <iframe id="frameMaps" src="<%=a.getMappa() %>" width="400" height="250" frameborder="0" style="border:0;"></iframe>
            <br>
              <form action="ProductControl" method="get" onsubmit="return controlloTaglia()">
              <br>              
              <br>
              <div class="d-flex justify-content-left">
              <button type="submit" class="btn btn-danger" id="carrell">Voglio prenotare  &nbsp&nbsp</button>
              </div>
            </form>
          </div>
          <!--Content-->

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->

      <hr>

      
       <div id="fotoLocaleDiv">
  <h4 id="fotoTitolo">Le foto del locale</h4>
  <%
    fList.clear();
    fList=fdao.doRetrieveByAttivita(a.getIdAttivita());
    int cont=0; //serve per far andare a capo le foto ogni 4
    for(int i=0;i<fList.size();i++) {
        cont++;
        if(cont>4) {
        	%>
        	<div id="separaFoto"></div>
        	<%
        cont=0;	 
        }
    	FotoBean f1=new FotoBean();
    	f1=fList.get(i);
  %>
  <img src="<%=f1.getFoto() %>" width=130px height=130px id="fotoLocale">
 
   
 <%} }%>
</div>


<div id="spaziohome"><br><br><br><br><br></div>
</div>
         
    <%@ include file="footer.jsp"%>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>