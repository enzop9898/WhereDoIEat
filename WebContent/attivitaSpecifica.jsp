<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dao.*"  import="bean.*" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WhereDoIEat</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="STILI/header.css">
   <link rel="stylesheet" href="STILI/footer.css">
    <link rel="stylesheet" href="STILI/centroAttivita.css">

  <script src="footer.js"></script> 
</head>
<body>
 
    <!-- example 7 - center on mobile 2-->
<nav id="navbar1" class="navbar navbar-expand-lg">
  <div class="d-flex flex-grow-1">
      <span class="w-100 d-lg-none d-block"><!-- hidden spacer to center brand on mobile --></span>
      <a class="navbar-brand" href="Home.jsp">
         <img src="foto/final.PNG" alt="WhereDoIEat" id="logo">
      </a>
  </div>
              <a id="collegamento2" href="faq.html" class="nav-link">Domande Frequenti</a>
              <%
                 PersonaBean p= new PersonaBean();
                 p=(PersonaBean) request.getSession().getAttribute("cliente");
                 if (p!=null) {
              %>
              <a id="collegamento" href="ServletLogout" class="nav-link">Logout</a>
              <a id="collegamento" href="areaPersonale.jsp" class="nav-link">Area Personale</a>
              <% } else { %>
              <a id="collegamento" href="login.jsp" class="nav-link">Accedi</a>
     
              <a id="collegamento" href="registrazione.jsp" class="nav-link">Registrati ora</a>  
          <%} %>    
          
</nav>

     

<!-- example 8 - center logo on mobile, search right -->
<nav id="navbar2" class="navbar navbar-expand-lg">
  <div class="collapse navbar-collapse flex-grow-1 text-right" id="myNavbar8">

  <div class="input-group-append">
      <button class="btn btn-outline-secondary dropdown-toggle" id="locali" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Cosa vuoi mangiare?</button>
      <div class="dropdown-menu">
        <a class="dropdown-item tipi" href="#">Ristorante</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">Pizzeria</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">Rosticceria</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">Pub</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">FastFood</a>
      </div>
      </ul>
  </div>

  <div class="input-group-append">
    <button class="btn btn-outline-secondary dropdown-toggle" id="comuni" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Dove vuoi mangiare?</button>
    <div class="dropdown-menu">
      <a class="dropdown-item tipi" href="#">Baronissi</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">Salerno</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">Agropoli</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">San Cipriano Picentino</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">Roccadaspide</a>
    </div>
    
</div>
 
      <div class="d-flex w-100 justify-content-end order-3">
          <form class="d-flex flex-nowrap align-items-center" method="post" action="AltreRicerche">
              <input type="hidden" name="action" value="SearchNome">
              <input class="form-control border-right-0 mr-n1" name="daCercare" type="search" size="50" placeholder="Cerca" aria-label="Search">
              <button id="cerca" class="btn btn-outline-secondary" type="submit"><i class="fa fa-search">Search</i></button>
            </form>
      </div>
  </div>
</nav>


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
  <div id="attivita">
  <h1><%=a.getNome() %></h1>
  <img id="fotoCons" src="<%=url%>" height=300px width=300px>
  <p>ORARIO: <%=a.getOraApertura() %>h - <%=a.getOraChiusura() %>h</p>
  <p>Il giorno di chiusura di questo locale &egrave : <%=a.getGiornoChiusura() %></p>
  <iframe id="frameMaps" src="<%=a.getMappa() %>" width="400" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
  <div id="fotoLocaleDiv">
  <h4>Le foto del locale</h4>
  <%
    fList.clear();
    fList=fdao.doRetrieveByAttivita(a.getIdAttivita());
    for(int i=0;i<fList.size();i++) {
    	FotoBean f1=new FotoBean();
    	f1=fList.get(i);
  %>
  <img src="<%=f1.getFoto() %>" width=130px height=130px id="fotoLocale">
 
  
 <%} %>
 </div>

<br>
<div id="separazione"></div>
<div id="piattiLocale">
<h4 id="titoloPiatti">I piatti Consigliati del locale</h4>
<%
  
   PiattiDAO piattodao=new PiattiDAO();
   ArrayList<PiattiBean> pList=new ArrayList<PiattiBean>();
   pList=piattodao.doRetrieveByAttivita(a.getIdAttivita());
   for(int i=0;i<pList.size();i++) {
	   PiattiBean piatto= new PiattiBean();
	   piatto=pList.get(i);
%>
<div>
  <p> <%=piatto.getPiatto() %>: <%=piatto.getDescrizione() %> </p>
</div>

<%} %>
</div>
 
 <%} %>
</div>

<div id="spaziohome"><br><br><br> <br><br><br> <br><br> </div>
         
         <!-- Footer -->
  <footer id="abbassa" class="page-footer font-small unique-color-dark">
      <div style="background-color: #000000;">
        <div class="container">
  
          <!-- Grid row-->
          <div class="row py-4 d-flex align-items-center">
  
            <!-- Grid column -->
            <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
              <h6 id="headfoot" class="mb-0">Resta connesso con noi sui social</h6>
            </div>
            <!-- Grid column -->
  
            <!-- Grid column -->
            <div class="col-md-6 col-lg-7 text-center text-md-right">
  
              <!-- Facebook -->
                <a href="https://www.facebook.com/ElDiezShop/?ref=bookmarks" id="img" onMouseOver="cambiaFacebook()" onMouseOut="ricambiaFacebook()"><img id="facebook" src="foto/facebook2.png" class="fb-ic">
                <i class="fab fa-facebook-f white-text mr-4"> </i>
              </a>
              <!--Youtube -->
                  <a href="https://www.youtube.com/watch?v=lH1m5zOImJU" id="img" onMouseOver="cambiaYouTube()" onMouseOut="ricambiaYouTube()"><img id="youtube" src="foto/youtube2.png"  class="fb-ic">
               <i class="fab fa-linkedin-in white-text mr-4"> </i>
               </a>
              <!--Instagram-->
                  <a href="https://www.instagram.com/eldiezshop2019" id="img" onMouseOver="cambiaInstagram()" onMouseOut="ricambiaInstagram()"><img id="instagram" src="foto/Instagram2.png"  class="fb-ic" >
            <i class="fab fa-instagram white-text"> </i>
          </a>
          <!-- Grid column -->
      </div>
          </div>
  
          <!-- Grid row-->
  
        </div>
      </div>
  
      <!-- Footer Links -->
      <div class="container text-center text-md-left mt-5">
  
        <!-- Grid row -->
        <div class="row mt-3">
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4"> 
  
            <!-- Content -->
            <h6 class="text-uppercase font-weight-bold">CHI SIAMO</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>Salve,siamo quattro ragazzi appassionati di Informatica e studenti del Dipartimento di Informatica di UNISA. Abbiamo sviluppato questo sito con lo scopo di fornire ai nostri clienti un modo comodo di conoscere attività e gustare i loro cibi in base ad un sistema di recensioni e valutazioni su queste ultime.</p>
  
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
  
            <!-- Links -->
            <h6 class="text-uppercase font-weight-bold">AIUTO</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>
              <a class="linkfoot" href="terminiecondizioni.html">Termini & Condizioni</a>
            </p>
            <p>
              <a class="linkfoot" href="policy.html">Privacy Policy</a>
            </p>
            <p>
              <a class="linkfoot" href="recesso.html">Diritto di Recesso</a>
            </p>
            <p>
              <a class="linkfoot" href="faq.html">FAQ</a>
            </p>
  
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
  
            <!-- Links -->
            <h6 class="text-uppercase font-weight-bold">LINK UTILI</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>
              <a class="linkfoot" href="#!">Area Personale</a>
            </p>
            <p>
              <a class="linkfoot" href="registrazione.jsp">Registrati</a>
            </p>
            <p>
              <a class="linkfoot" href="taglia home.html">Tabella delle Taglie</a>
              
            </p>
  
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
  
            <!-- Links -->
            <h6 class="text-uppercase font-weight-bold">Contatti</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>
              <img src="foto/luogo.png" alt="volevi">
            <i class="fas fa-home mr-3"></i> <a class="linkfoot" href="https://www.google.it/maps/place/Via+Roma,+Salerno+SA/@40.6783183,14.756089,17z/data=!3m1!4b1!4m5!3m4!1s0x133bc22609d11f13:0x7a65ed64b91a7408!8m2!3d40.6783183!4d14.758283">Salerno,Via Roma,156</a></p>
          <p>
            <img src="foto/email.png" alt="volevi">
            <i class="fas fa-envelope mr-3"></i><a class="linkfoot" href="https://accounts.google.com/signin/v2/sl/pwd?hl=it&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin">wheredoieat_shop@gmail.com</a> </p>
          <p>
            <img src="foto/phone.png" alt="volevi">
            <i class="fas fa-phone mr-3"></i> +39 348 32 09 519 </p>
          <p>
            <img src="foto/fisso.png" alt="volevi">
            <i class="fas fa-print mr-3"></i> + 089 89 32 63</p>
  
          </div>
          <!-- Grid column -->
  
        </div>
        <!-- Grid row -->
  
      </div>
      <!-- Footer Links -->
  
      <!-- Copyright -->
      <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a class="linkfoot" href="index.jsp">WhereDoIEat </a>
      </div>
      <!-- Copyright -->
  
    </footer>
    <!-- Footer -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>