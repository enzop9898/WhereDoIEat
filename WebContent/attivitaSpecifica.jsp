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
    <script>
    function visualizza(foto){
	    var st = foto.src;
        $('#galleryImage').attr("src",st.replace("70x70","500x300"));
    }
    </script> 
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
          <form action="" method="get">
              <br>              
              <div class="d-flex justify-content-left">
                 <button type="submit" class="btn btn-dark btn-lg float-right pren">Prenota ora</button>
              </div>
            </form>
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
          </div>
          <!--Content-->

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->
      
  <%
    fList.clear();
    fList=fdao.doRetrieveByAttivita(a.getIdAttivita());%>


<div class="container py-3 px-0">
</div>
<div class="container bg-dark py-4 mb-4 min-vh-50 shadow shadow-lg">
    <div class="row">
        <div class="col-12 text-white gallery">
            <div class="row">
                
                <!-- timeline item 1 left dot -->
                <div class="col-auto text-center flex-column d-none ">
                    <div class="row h-50">
                        <div class="col">&nbsp;</div>
                        <div class="col">&nbsp;</div>
                    </div>
                    <h5 class="m-0">
                        <span class="badge badge-pill border border-secondary">&nbsp;</span>
                    </h5>
                    <div class="row h-50">
                        <div class="col border-right border-secondary">&nbsp;</div>
                        <div class="col">&nbsp;</div>
                    </div>
                </div>
                <!-- timeline item 1 event content -->
                <div class="col py-2">
                    <div class="card bg-transparent border-0 text-light">
                        <div class="card-body">
                            <div class="float-right text-muted"><i class="fa fa-check"></i></div>
                            <p class="card-title text-uppercase">Le foto del locale</p>
                            <div class="row no-gutters">
                            <%for(int i=0;i<fList.size();i++) {
    							FotoBean f1=new FotoBean();
    							f1=fList.get(i);
  							%>
                                <div class="col-2 col-sm-auto">
                                    <a href data-toggle="modal" data-target="#galleryModal"><img src="<%=f1.getFoto() %>"width=100px height=100px class="mb-2 mr-2 img-fluid" onclick = "javascript: visualizza(this)" /></a>
                                </div>
                            <%} }%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark">
            <div class="modal-header border-0">
                <h5 class="font-weight-light text-white mb-0" id="galleryTitle"></h5>
                <button type="button" class="close float-right text-dark" aria-label="Close" data-dismiss="modal">
                  <span aria-hidden="true">&#xD7;</span>
                </button>
            </div>
            <div class="modal-body p-0 text-center bg-alt">
                <img src="//placehold.it/1200x700/222?text=..." id="galleryImage" class="loaded-image mx-auto img-fluid">
            </div>
            <div class="modal-footer border-0">
                <button class="btn btn-outline-light" data-dismiss="modal" aria-hidden="true">OK</button>
            </div>
        </div>
    </div>
</div>






<div id="spaziohome"><br><br><br><br><br></div>
</div>
         
    <%@ include file="footer.jsp"%>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>